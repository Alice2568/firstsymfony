<?php

namespace App\Service;

use Symfony\Component\Mailer\Mailer;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\Mailer\MailerInterface;

class SendEmailService
{
    public function __construct(private MailerInterface $mailer)
    {}

    public function send(
        string $from,
        string $to,
        string $subject,
        string $template,
        array $context


    ): void
    {
        // on cree le mail
        $email = (new TemplatedEmail())
            ->from($from)
            ->to($to)
            ->subject($subject)
            ->htmlTemplate("emails/$template.html.twig")
            ->context($context);

        $this ->mailer->send($email);
    }
}