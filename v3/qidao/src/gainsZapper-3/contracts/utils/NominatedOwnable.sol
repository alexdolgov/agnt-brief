pragma solidity 0.8.13;

contract NominatedOwnable {

    error NotOwnerError();
    error MustBeNominated();
    error OwnerCannotBeZero();

    address public owner;
    address public nominatedOwner;

    constructor(address _owner) public {
        if(_owner == address(0)){
            revert OwnerCannotBeZero();
        }
        owner = _owner;
        emit OwnerChanged(address(0), _owner);
    }

    function nominateNewOwner(address _owner) external onlyOwner {
        nominatedOwner = _owner;
        emit OwnerNominated(_owner);
    }

    function acceptOwnership() external {
        if(msg.sender != nominatedOwner){
            revert MustBeNominated();
        }
        emit OwnerChanged(owner, nominatedOwner);
        owner = nominatedOwner;
        nominatedOwner = address(0);
    }

    modifier onlyOwner {
        _onlyOwner();
        _;
    }

    function _onlyOwner() private view {
        if(msg.sender != owner){
            revert NotOwnerError();
        }
    }

    event OwnerNominated(address newOwner);
    event OwnerChanged(address oldOwner, address newOwner);
}