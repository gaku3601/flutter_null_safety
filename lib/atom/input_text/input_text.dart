/// StatefulWidgetを利用しGlobalKeyで内部関数にアクセスするパターン
import 'package:flutter/material.dart';
import 'package:flutter_null_safety/util/validatable.dart';

class InputText extends StatefulWidget {
  final GlobalKey<InputTextState>? key;
  final String? label;
  final String initValue;
  final Validatable? validator;
  final bool isAutoValidation;
  final void Function(String value) onChanged;
  InputText({
    this.key,
    this.label,
    this.initValue = '',
    this.validator,
    required this.onChanged,
    this.isAutoValidation = false,
  });

  @override
  InputTextState createState() => InputTextState();
}

class InputTextState extends State<InputText> {
  String? _errorMessage;
  String _value = '';
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _value = this.widget.initValue;
    _textEditingController = new TextEditingController(text: this._value);
  }

  /// バリデーションを実施する
  bool validate() {
    setState(() {
      this._errorMessage = this.widget.validator!.validate(this._value);
    });
    return this._errorMessage == null ? false : true;
  }

  /// 変更時の処理
  void _onChanged(String value) {
    this._value = value;
    this.widget.onChanged(_value);
    if (this.widget.isAutoValidation) {
      this.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this._textEditingController,
      onChanged: this._onChanged,
      decoration: InputDecoration(
        labelText: this.widget.label,
        errorText: this._errorMessage,
      ),
    );
  }
}
