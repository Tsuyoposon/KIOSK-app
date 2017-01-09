Like = React.createClass({

    getInitialState: function(){
        return {
            counts: 0,         //いいねの合計数
            is_liked: false    //いいねされているかどうかの状態
        };
    },
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
    componentDidMount: function(){
       this.ajaxMain('GET');
    },
    onClick: function(){
       this.ajaxMain("POST")
    },


    render: function(){
    var fonter = {
      fontSize: "18px"
    };
        if(this.state.is_liked){
          return (
              <ul className="list-inline nav nav-pills">
                <li className="active"><p style={fonter}>いいね!&nbsp;<span className="badge">{this.state.counts}</span></p></li>
                <li className="iinebtn-bottom"><button className="btn btn-danger disabled disabled btn-sm" onClick={this.ajaxMain.bind(this, this.state.is_liked ? 'DELETE' : 'POST')}><strong>いいね 取り消し!</strong></button></li>
              </ul>
            );
        }else{
          return(
              <ul className="list-inline nav nav-pills">
                <li className="active"><p style={fonter}>いいね!&nbsp;<span className="badge">{this.state.counts}</span></p></li>
                <li className="iinebtn-bottom"><button className="btn btn-danger disabled btn-sm" onClick={this.ajaxMain.bind(this, this.state.is_liked ? 'DELETE' : 'POST')}><strong>いいね!</strong></button></li>
              </ul>
          );
        }

    }
});
