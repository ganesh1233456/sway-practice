contract;

storage {
    counter: u64 = 0,
}

abi MyContract {
    #[storage(read, write)]
    fn increment();

    #[storage(read)]
    fn counter() -> u64;
}

impl MyContract for Contract {
    #[storage(read)]
    fn counter() -> u64 {
        return storage.counter;
    }

    #[storage(read, write)]
    fn increment() {
        storage.counter = storage.counter + 1;
    }
}

#[test]
fn test_counter_success() {
    let caller = abi(MyContract, CONTRACT_ID);
    let result = caller.counter {} ();
    assert(result == 0)
}

#[test]
fn test_increment_success() {
    let caller = abi(MyContract, CONTRACT_ID);
    caller.increment {} ();
    let result = caller.counter {} ();
    assert(result == 1);
}