export const fetchBooks = () => {
	return (dispatch) => {
		dispatch({type: 'LOADING_BOOKS'})
		fetch('http://localhost:3001/api/v1/books').then(resp => resp.json())
			.then(respJson => {
			dispatch({type: 'FETCH_BOOKS', booklist: respJson})
		})
	}
}

export const showBook = id => {
	return (dispatch) => {
		dispatch({type: 'LOADING_BOOKS'})
		fetch(`http://localhost:3001/api/v1/books/${id}`).then(resp => resp.json())
			.then(respJson => {
				if(respJson.error){
					dispatch({type: "ERROR", message: respJson.error})
				}else{
					dispatch({type: 'SHOW_BOOK', book: respJson})
				}
		})
	}
}

export const addBookToBooklist = book => {
	return(dispatch) => {
		dispatch({type: 'ADD_BOOK_TO_BOOKLIST'}, book)
	}
}

export const editBook = book => {
	return(dispatch) => {
		dispatch({type: 'LOADING_BOOKS'})
		fetch(`http://localhost:3001/api/v1/books/${book.id}`,{
			method: 'PATCH',
			headers: {
			Authorization: `Bearer ${book.jwt}`,
			"Content-Type": "application/json",
    		"Accept": "application/json"
			},
			body: JSON.stringify(book)
		})
		.then(resp => resp.json())
		.then(respJson => {
			dispatch({type: 'SHOW_BOOK', book: respJson})
		})
	}
}

export const deleteBook = book => {
	return(dispatch) => {
		dispatch({type: 'LOADING_BOOKS'})
		fetch(`http://localhost:3001/api/v1/books/${book.id}`,{
			method: 'DELETE',
			headers: {
			"Content-Type": "application/json",
    		"Accept": "application/json"
			},
			body: JSON.stringify(book)
		})
		.then(resp => resp.json())
		.then(respJson => {
			dispatch({type: 'DELETE_BOOK', book: book})
		})
	}
}