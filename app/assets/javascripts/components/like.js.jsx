Like = React.createClass({

  ajaxMain: function(){
    console.log("hello world!");
  },

  render: function(){
    return(
      <button onClick={this.ajaxMain}>いいね!</button>
    );
  }
});
