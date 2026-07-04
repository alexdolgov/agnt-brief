pragma solidity ^0.8.4;

abstract contract ERC20 {
    
    function transferFrom(
        address from,
        address to,
        uint256 value
    ) virtual external returns (bool);
    
}

contract SimpleBatch {
    
    uint256 private unlocked = 1;
    address[] private owners;

    modifier lock() {
        require(unlocked == 1, 'SIMPLEBATCH:LOCKED');
        unlocked = 0;
        _;
        unlocked = 1;
    }

    modifier onlyOwner() {
        require(isOwner(msg.sender) == true, 'SIMPLEBATCH:OWNER_REQUIRED');
        _;
    }

    constructor() {
        owners.push(msg.sender);
    }

    function isOwner(address _check) public view returns (bool) {
        for (uint i = 0; i < owners.length; i++){
            if(_check == owners[i]){
                return true;
            }
        }
        return false;
    }
    
    function addOwner (address _owner) public onlyOwner {
        owners.push(_owner);
    }

    function batchTokensTransferFrom(
        address _token, 
        address token_allower, 
        address[] calldata _recipients, 
        uint256[] calldata _amounts,
        uint256 startTime
    ) external lock onlyOwner returns (bool) {
        require(block.timestamp > startTime, "SIMPLEBATCH:STARTTIME_NOT_BEGUN");
        require(_recipients.length == _amounts.length);
        for (uint i = 0; i < _amounts.length; i++) {
            require(ERC20(_token).transferFrom(token_allower, _recipients[i], _amounts[i]));
        }
        return true;
    }
}