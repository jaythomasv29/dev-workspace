var customerData = {
    'Joe': {
        visits: 1
    },
    'Carol': {
        visits: 2
    },
    'Howard': {
        visits: 3,
    },
    'Carrie': {
        visits: 4
    }
};

function checkGuest(firstName) {
    // your code here
    //The names are in the keys, enumerate through object to check if match
    let isMatch = false;

    for (person in customerData) {
        // check if matches
        if (firstName.toLowerCase() == person.toLowerCase()) {
            //switch statement based on visit
            return true;
        }
    }
    return false;
}

function greetCustomer(firstName) {
    const isMatch = checkGuest(firstName)
    if (isMatch == false) {
        return 'Welcome! Is this your first time?'
    } else {
        let totalVisits = customerData[firstName].visits

        switch (true) {
            case totalVisits === 1:
                return (`Welcome back, ${firstName}! We're glad you liked us the first time!`)
                break;
            case totalVisits > 1:
                return (`Welcome back, ${firstName}! So glad to see you again!`)
                break;
        }
    }
}