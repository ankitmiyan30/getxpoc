class AppHelper{
  static formatHtmlString(String htmlText){
     RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return htmlText.replaceAll(exp, '');
  }
}