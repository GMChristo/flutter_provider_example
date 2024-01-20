import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider/produto_model.dart';
import 'package:provider_example/provider/produto_widget.dart';
import 'package:provider_example/provider/user_model.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);

    /// .read ele vai retornar uma instancia sem ficar escutando as alterções
    // var user = context.read<UserModel>();

    /// nessa estrutura é recuperado somente a uma parte da informação desejada
    // var imageAvatar = context.select<UserModel, String>((userModel) => userModel.imgAvatar);

    return Provider(
      create: (_) => ProdutoModel(nome: 'GMChristo'),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(user.imgAvatar),
                  radius: 60,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(user.name),
                    Text('(${user.birthDate})'),
                  ],
                ),
                const ProdutoWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
