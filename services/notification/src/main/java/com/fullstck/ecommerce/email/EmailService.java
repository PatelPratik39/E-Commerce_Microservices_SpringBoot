package com.fullstck.ecommerce.email;

import com.fullstck.ecommerce.kafka.order.Product;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring6.SpringTemplateEngine;

import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.fullstck.ecommerce.email.EmailTemplates.ORDER_CONFIRMATION;
import static com.fullstck.ecommerce.email.EmailTemplates.PAYMENT_CONFIRMATION;
import static java.nio.charset.StandardCharsets.UTF_8;

@Slf4j
@Service
@RequiredArgsConstructor
public class EmailService {

    private final JavaMailSender mailSender;
    private  final SpringTemplateEngine templateEngine;

//    send email for successfully Payment

    @Async
    public void sendPaymentSuccessEmail(
            String destinationEmail,
            String customerName,
            BigDecimal amount,
            String orderReference
    ) throws MessagingException {

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED, UTF_8.name());
        messageHelper.setFrom("contact@aliboucoding.com");

        final String templateName = PAYMENT_CONFIRMATION.getTemplate();

        Map<String , Object> variables = new HashMap<>();
        variables.put("customerName", customerName);
        variables.put("amount", amount);
        variables.put("orderReference", orderReference);

//        create context
        Context context = new Context();
        context.setVariables(variables);
        messageHelper.setSubject(PAYMENT_CONFIRMATION.getSubject());

        try{
            String htmlTemplate = templateEngine.process(templateName, context);
            messageHelper.setText(htmlTemplate, true);

            messageHelper.setTo(destinationEmail);
            mailSender.send(mimeMessage);

            log.info(String.format("INFO - Email successfully sent to %s with template %s, ", destinationEmail, templateName));
        } catch (MessagingException e) {
            log.warn("WARNING - Cannot send email to {}" + destinationEmail);
        }
    }

//    Send Confirmation email

    @Async
    public void sendOrderConfirmationEmail(
            String destinationEmail,
            String customerName,
            BigDecimal amount,
            String orderReference,
            List<Product> products
    ) throws MessagingException {

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        MimeMessageHelper messageHelper =
                new MimeMessageHelper(mimeMessage, MimeMessageHelper.MULTIPART_MODE_RELATED, StandardCharsets.UTF_8.name());
        messageHelper.setFrom("cusomer_email@email.com");
        final String templateName = ORDER_CONFIRMATION.getTemplate();

        Map<String , Object> variables = new HashMap<>();
        variables.put("customerName", customerName);
        variables.put("totalAmount", amount);
        variables.put("products", products);

        Context context = new Context();
        context.setVariables(variables);
        messageHelper.setSubject(ORDER_CONFIRMATION.getSubject());

        try{
            String htmlTemplate = templateEngine.process(templateName, context);
            messageHelper.setText(htmlTemplate, true);

            messageHelper.setTo(destinationEmail);
            mailSender.send(mimeMessage);

            log.info(String.format("INFO - Email successfully sent to %s with template %s, ", destinationEmail, templateName));
        } catch (MessagingException e) {
            log.warn("WARNING - Cannot send email to {}" + destinationEmail);

        }
    }
}
