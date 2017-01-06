Like = React.createClass({
    ajaxMain: function(method){
        $.ajax({
            url: this.props.url,                               //このURLは次でセットします
            type:method,                                       //今回はPOSTで送ります
            dataType: 'json',
            cache: false,
            data: {shop_id: this.props.post},                  //このpostも次でセットします
            success: function(data) {
                if(data.like){                                 //ここはあとで活きてきます笑
                    this.setState({is_liked: data.liked});     //responseのlikedをstateのis_likedに反映させます
                };
                this.setState({counts: data.counts});          //responseのcountsをstateのcountsにに反映させます
            }.bind(this),                                      //bindしないとthisが使えなくてエラりますw
            error: function(xhr, status, err) {
                console.error(this.props.url, status, err.toString());
            }.bind(this)
        });
    },

    render: function(){
        return(
            <button onClick={this.ajaxMain.bind(this, "POST")}>いいね!</button>
        );
    }
});
