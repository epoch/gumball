var React = require('react');

var MySlider = React.createClass({
  render: function() {
    return (
      <div>
        <input type="range" 
          onChange={this.updateVal} 
          value={this.state.val} 
          max={this.state.max} />
        <input type="text" value={this.state.val} onChange={this.updateVal} />
      </div>
    ) 
  },

  getInitialState: function() {
    return { 
      val: this.props.val || 0,
      max: this.props.max
     };
  },

  updateVal: function(event) {
    this.setState({ val: event.target.value });
  }

});

var AppComp = React.createClass({
  render: function() {
    return (
      <div className='box'>
        <MySlider />
        <MySlider val="7" max="10" />
      </div>
    )
  }
})

React.render(<AppComp />, document.getElementById('app'));

