import React, { PropTypes } from 'react';

export default class Quiz extends React.Component {
    static propTypes = {
        name: PropTypes.string.isRequired, // this is passed from the Rails view
    };

    /**
     * @param props - Comes from your rails view.
     * @param _railsContext - Comes from React on Rails
     */
    constructor(props, _railsContext) {
        super(props);

        // How to set initial state in ES6 class syntax
        // https://facebook.github.io/react/docs/reusable-components.html#es6-classes
        this.state = { name: this.props.name };
    }

    handleSubmit(event) {
        alert('A name was submitted: ');
        event.preventDefault();
    };

    render() {
        return (
            <form onSubmit={this.handleSubmit}>
                <div className="form-group">
                    <label>Answer: </label>
                    <input type="text" className="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="answer" />
                </div>
                <button type="submit" className="btn btn-primary">Check Answer</button>
                <button type="submit" className="btn btn-primary">Next Quiz</button>
            </form>
        );
    }
}
