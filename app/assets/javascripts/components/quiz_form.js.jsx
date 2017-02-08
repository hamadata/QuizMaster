var QuizForm = React.createClass({

    getInitialState: function () {
        return ({
            id: this.props.id,
            body: this.props.body,
            result: undefined,
            value: null,
            link: undefined
        });
    },

    handleSubmit: function (event) {
        var _this = this;
        event.preventDefault();
        var answer = this.state.value.trim();
        $.ajax({
            url: "/quiz/"+this.props.id,
            dataType: 'json',
            type: 'PATCH',
            data: {answer: answer},
            success: function (data) {
                _this.setState({result: data.result});
                _this.setState({link: data.link})
            },
            error: function (xhr, status, err) {
                console.error(this.props.url, status, err.toString());
            }.bind(this)
        });
    },

    handleChange: function (event) {
        this.setState({value: event.target.value});
    },

    render: function () {
        return (
            <div>
                <h1>Quiz</h1>
                <div className="content" dangerouslySetInnerHTML={{__html: this.state.body}}></div>
                <form onSubmit={this.handleSubmit}>
                    <div className="form-group">
                        <label>Answer</label>
                        <input type="textarea" className="form-control" placeholder="write answer here"
                               onChange={this.handleChange}/>
                    </div>
                    { (this.state.result !== undefined) ? <Result result={this.state.result} /> : null }
                    { (this.state.result !== undefined) ? <a href={this.state.link} className="btn btn-primary">Next</a> : <button className="btn btn-primary">Submit</button> }
                </form>
            </div>
        );
    }

});

var Result = React.createClass({
    render: function () {
        return (
            this.props.result ? <div className="alert alert-success">Your answer is correct!</div> : <div className="alert alert-danger">Your answer is incorrect!</div>
        );
    }
});

