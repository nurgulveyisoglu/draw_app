import 'package:draw_app/view_model/register_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Sayfası'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              _buildEmailTextField(),
              SizedBox(height: 16),
              _buildPasswordTextField(),
            ],
          ),
          _buildLoginButton(context),
          _buildOpenRegisterButton(context),
        ],
      ),
    );
  }

  Widget _buildEmailTextField() {
    return TextField(
      controller: _emailController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text('E-mail'),
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      controller: _passwordController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text('Şifre'),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    RegisterViewModel viewModel = Provider.of(
      context,
      listen: false,
    );
    return ElevatedButton(
        onPressed: () {
          viewModel.register(
            context,
            _emailController.text.trim(),
            _passwordController.text.trim(),
          );
        },
        child: Text('Kayıt Ol'));
  }

  Widget _buildOpenRegisterButton(BuildContext context) {
    RegisterViewModel viewModel = Provider.of(
      context,
      listen: false,
    );
    return TextButton(
      child: Text("Hesabınız var mı? Giriş yapınız."),
      onPressed: () {
        viewModel.openLoginPage(context);
      },
    );
  }
}
