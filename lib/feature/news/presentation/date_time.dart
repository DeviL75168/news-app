class DateTimeFormatted {

  static String convertDateTime(String datetimeStr) {
    String formattedDateTime = '';
    // Convert the datetime string to a DateTime object.

    try{
      DateTime datetime = DateTime.parse(datetimeStr);

      // Format the datetime object to the desired format.
      formattedDateTime =
      '${datetime.month} ${datetime.day}, ${datetime.year} ${datetime
          .hour}:${datetime.minute}';
    }
    catch(e){
      formattedDateTime = '';
    }
    return formattedDateTime;
  }
}