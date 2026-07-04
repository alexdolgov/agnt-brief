pragma solidity ^0.6.0;

interface LpInterface {
    function earned(address account) external view returns (uint256);
}

contract Snapshot {
    LpInterface public lpInterface;
    uint256[] public values;

    constructor (address _lpInterface) public {
        lpInterface = LpInterface(_lpInterface);
    }

    function getBalance(address[] memory destinations) public returns (uint256[] memory) {
        uint256 length = destinations.length;
        uint i;

        for (i=0; i < length; i++) {
            values.push(LpInterface(address(lpInterface)).earned(destinations[i]));
        }

        return values;
    }
}
