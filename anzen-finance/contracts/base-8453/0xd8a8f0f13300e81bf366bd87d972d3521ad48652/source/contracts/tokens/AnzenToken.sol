pragma solidity 0.8.23;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";

contract AnzenToken is ERC20BurnableUpgradeable {
    address public minter;

    error NotMinter();

    constructor() {
        _disableInitializers();
    }

    function initialize() external initializer {
        __ERC20_init("Anzen Token", "ANZ");
        minter = msg.sender;
    }

    function setMinter(address _minter) external {
        if (msg.sender != minter) revert NotMinter();
        minter = _minter;
    }

    function mint(address account, uint256 amount) external returns (bool) {
        if (msg.sender != minter) revert NotMinter();
        _mint(account, amount);
        return true;
    }
}
