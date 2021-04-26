/// StatefulWidgetを利用しGlobalKeyで内部関数にアクセスするパターン
import 'package:flutter/material.dart';
import 'package:flutter_null_safety/util/validatable.dart';

class InputTextController {
  final Validatable? validator;
  final bool isAutoValidation;
  void Function() init;
  InputTextController({
    this.validator,
    this.isAutoValidation = true,
    void Function()? init,
  }) : this.init = init ?? (() {});

  late _InputTextState _inputTextState;

  void _addState(_InputTextState customWidgetState) => this._inputTextState = customWidgetState;

  bool validate() => _inputTextState.validate();

  void setValue(String val) => _inputTextState.setValue(val);
}

class InputText extends StatefulWidget {
  final InputTextController controller;
  final String? label;
  final void Function(String value) onChanged;
  InputText({
    InputTextController? controller,
    this.label,
    required this.onChanged,
  }) : this.controller = controller ?? InputTextController();

  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  String? _errorMessage;
  String _value = '';
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    this.widget.controller._addState(this);
    this.widget.controller.init();
  }

  /// 値をセットします
  void setValue(String val) {
    _value = val;
    setState(() {
      _textEditingController = new TextEditingController(text: this._value);
    });
  }

  /// バリデーションを実施する
  bool validate() {
    setState(() {
      this._errorMessage = this.widget.controller.validator!.validate(this._value);
    });
    return this._errorMessage == null ? false : true;
  }

  /// 変更時の処理
  void onChanged(String value) {
    this._value = value;
    this.widget.onChanged(_value);
    if (this.widget.controller.isAutoValidation) {
      this.validate();
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this._textEditingController,
      onChanged: this.onChanged,
      decoration: InputDecoration(
        labelText: this.widget.label,
        errorText: this._errorMessage,
      ),
    );
  }
}
