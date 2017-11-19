var ConvertNumberToWord = function(){};

ConvertNumberToWord.do = function(text, $el){
  $.ajax({
    url: '/convert',
    data: {text: text},
    method: 'GET',
    success: function(data, status, xhr){
      $el.html(data['text']);
    },
    error: function(data, status, xhr){
        alert('Please enter a number between 1 and 999999999')
    },
  });
};