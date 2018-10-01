import React from 'react'
import { Form } from 'semantic-ui-react'
import axios from 'axios'

class AddIngredient extends React.Component {
  state = { name: '' }

  handleSubmit = (e) => {

  }
  
  handleChange = (e) => {
    this.setState({ name: e.target.value })
  }

  resetForm = () => {

  }

  render (){
    return (
      <Form onSubmit={this.handleSubmit}>
        <Form.Input
          placeholder="Add Ingredient"
          value={this.state.name}
          onChange={this.handleChange}
          required
        />
        <Form.Button type="button" onClick={this.resetForm}>
          Cancel
        </Form.Button>
        <Form.Button>Add</Form.Button>
      </Form>
    )
  }
}

export default AddIngredient