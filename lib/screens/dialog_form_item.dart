import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/item_provider.dart';
import '../widgets/snackbar.dart';

class DialogFormItem extends StatefulWidget {
  const DialogFormItem({super.key});

  @override
  State<DialogFormItem> createState() => _DialogFormItemState();
}

class _DialogFormItemState extends State<DialogFormItem> {
  final _formData = <String,dynamic>{};
  final _formKey = GlobalKey<FormState>();

  submit(){
    final isValid = _formKey.currentState?.validate() ?? false;
    if(!isValid) return;
    _formKey.currentState?.save();

    Provider.of<ItemProvider>(context, listen: false).saveItem(_formData);
    _formKey.currentState!.reset();
    Navigator.pop(context);
    SnackBarSuccessWidget.show(context);
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Adicionar Item',
            style: TextStyle(
              fontSize: 20
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (value) => _formData['name'] = value ?? "",
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if(value == null || value == ''){
                      return "obrigatório";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: "Nome do item",
                    hintText: "Ex: Camisa de botão"
                  ),
                ),
                TextFormField(
                  onSaved: (value) => _formData['collection'] = value ?? "",
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if(value == null || value == ''){
                      return "obrigatório";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: "Coleção",
                    hintText: "Ex: Coleção North"
                  ),
                ),
                TextFormField(
                  onSaved: (value) => _formData['price'] = value ?? 0,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if(value == null || value == ''){
                      return "obrigatório";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Preço",
                    hintText: "Ex: 49.90"
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          child: const Text('Cancelar')
        ),
        TextButton(
          onPressed: (){
            submit();
          }, 
          child: const Text('Salvar')
        ),
      ],
    );
  }
}