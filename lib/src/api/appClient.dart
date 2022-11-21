import 'package:appwrite/appwrite.dart';

Client client = Client()
    .setEndpoint('http://10.0.2.2/v1') // Your Appwrite Endpoint
    .setProject('6377c5b831e16cb2a64c')         // Your project ID
    .setSelfSigned(status: true);        // For self signed certificates, only use for development

Account account = Account(client);