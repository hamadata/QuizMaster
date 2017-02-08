var QuizForm = React.createClass({

    getInitialState: function () {
        return({
           body: this.props.body
        });
    },

    render: function () {
        return (
            <div>
                <h1>Quiz</h1>
                <div className="content" dangerouslySetInnerHTML={{__html: this.state.body}}></div>
                <form>
                    <div className="form-group">
                        <label>Answer</label>
                        <input type="textarea" className="form-control" placeholder="write answer here" />
                    </div>
                    <div className="alert alert-success">Your answer is correct!</div>
                    <div className="alert alert-danger">Your answer is not correct!</div>
                    <button className="btn btn-primary">Submit</button>
                </form>
            </div>
        );
    }

});