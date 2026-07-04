pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockPOSI is ERC20 {
    constructor() ERC20("Mock POSI", "MPOSI") {
        _mint(msg.sender, 100000 * 10**18);
    }

    function mint(address recipient, uint256 amount) public {
        _mint(recipient, amount);
    }
}
