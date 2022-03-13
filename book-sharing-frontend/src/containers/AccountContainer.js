import React, { Component } from 'react';
import { connect } from 'react-redux'
import Account from '../components/users/Account'
import { showAccount } from '../../actions/userActions'


class AccountContainer extends Component {
	

	render() {
		return(
			<div className="account-container mt-5">
				<Account user={this.props.user} books={this.props.books} requests={this.props.requests}/>
			</div>
		)
	}
}

// const mapStateToProps = state => {
// 	return {
// 		user: state.user.details,
// 		books: state.user.books,
// 		requests: state.user.requests
// 	}
// }

const mapStateToProps = state => {
	return {
		user: state.user.details
	}
}

// export default connect(mapStateToProps)(AccountContainer)
export default connect(mapStateToProps, {showAccount})(AccountContainer)