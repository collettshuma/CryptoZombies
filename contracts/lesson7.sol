pragma solidity >=0.8.12;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
    }

}
/*
This means only other functions within our contract will be able to call this function and add to the numbers array.
*/
