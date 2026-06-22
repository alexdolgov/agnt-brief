// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../libraries/Roleable.sol";
import "../interfaces/IHyperToken.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract HyperToken is IHyperToken, Roleable, ERC20, ERC20Permit {
    address public asset;

    mapping(address => bool) public miners;

    constructor(
        IAddressesProvider addressProvider,
        address _asset,
        address _miner,
        string memory name_,
        string memory symbol_
    ) ERC20(name_, symbol_) ERC20Permit(name_) Roleable(addressProvider) {
        asset = _asset;
        miners[_miner] = true;
    }

    modifier onlyMiner() {
        require(miners[msg.sender], "miner forbidden");
        _;
    }

    function decimals() public view virtual override returns (uint8)  {
        return ERC20(asset).decimals();
    }

    function mint(address to, uint256 amount) external onlyMiner {
        _mint(to, amount);
    }

    function burn(uint256 amount) external onlyMiner {
        _burn(msg.sender, amount);
    }

    function setMiner(address account, bool enable) external {
        require(msg.sender == ADDRESS_PROVIDER.timelock(), "onlyTimelock");
        miners[account] = enable;

        emit SetMinter(msg.sender, account, enable);
    }
}
