var ConvertNumberToWord = function(){};

ConvertNumberToWord.do = function(text, $el){
  $.ajax({
    url: '/convert',
    data: {text: text},
    method: 'GET',
    success: function(data, status, xhr){
      $el.html(data['text']);
    },
  });
};