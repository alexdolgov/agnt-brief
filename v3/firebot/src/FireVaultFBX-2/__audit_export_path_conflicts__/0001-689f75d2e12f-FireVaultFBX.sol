// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

interface IFireBotTokenV3 {
	function transferFrom(address sender, address recipient, uint256 amount) external;
    function balanceOf(address account) external view returns(uint256);
}

interface IFireBotItems {
	function balanceOf(address account, uint256 id) external view returns(uint256);
}

contract FireVaultFBX is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    
    IFireBotTokenV3 public FBX = IFireBotTokenV3(0xD125443F38A69d776177c2B9c041f462936F8218);
    IFireBotItems public items = IFireBotItems(0x2e14520C30370d114612552616964a3bCeD6176E);

    uint256 pup_value;
    uint256 box_threshold;
    uint256 exit_fee;
    uint256 daily_fee;
    uint256 last_fee_collection;

    address vault_address = 0xBd684239567341ed500224FfE21F5540930359A9;

    constructor() ERC20("FireVault FBX", "fireFBX") ERC20Permit("FireVault FBX") {
        box_threshold = 7850;
        pup_value = 286 * 1e18;
        exit_fee = 1e18 * 0.1 / 100;
        daily_fee = 1e18 * 0.03 / 100;
        last_fee_collection = block.timestamp;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function set_pup_value(uint256 x) public onlyOwner {
        pup_value = x;
    }

    function get_pup_value() public view returns (uint256) {
        return pup_value;
    }

    function set_box_threshold(uint256 x) public onlyOwner {
        box_threshold = x;
    }

    function get_box_threshold() public view returns (uint256) {
        return box_threshold;
    }

    function set_exit_fee(uint256 x) public onlyOwner {
        exit_fee = x;
    }

    function get_exit_fee() public view returns (uint256) {
        return exit_fee;
    }

    function set_daily_fee(uint256 x) public onlyOwner {
        daily_fee = x;
    }

    function get_daily_fee() public view returns (uint256) {
        return daily_fee;
    }

    function get_fireFBX_price() public view returns (uint256) {
        uint256 vault_valuation = 0;
        vault_valuation = FBX.balanceOf(vault_address);
        if (pup_value > 150 * 1e18) {
            vault_valuation += box_threshold * uint256((pup_value - 150 * 1e18) / 5);
        }
        vault_valuation += pup_value * items.balanceOf(vault_address, 10);
        return uint256(1e18 * vault_valuation / totalSupply());
    }

    function stake(address account, uint256 FBX_amount) public {
        uint256 fireFBX_price = get_fireFBX_price();
        require(fireFBX_price > 0, "The vault token price is incorrect.");
        require(FBX_amount > 1000, "You need more FBX to mint vault tokens.");
        FBX.transferFrom(account, vault_address, FBX_amount);
        _mint(account, uint256(1e18 * FBX_amount / fireFBX_price));
    }

    function unstake(address account, uint256 fireFBX_amount) public {
        uint256 fireFBX_price = get_fireFBX_price();
        require(fireFBX_price > 0, "The vault token price is incorrect.");
        require(fireFBX_amount > 0, "You need more vault tokens to unstake.");
        require(exit_fee < 1e18, "Withdrawing is temporarily suspended");
        _burn(account, fireFBX_amount);
        FBX.transferFrom(vault_address, account, uint256((fireFBX_amount * fireFBX_price / 1e18) * (1e18 - exit_fee) / 1e18));
    }

    function collect_pending_fee() public {
        uint256 elapsed_time = block.timestamp - last_fee_collection;
        _mint(vault_address, uint256(totalSupply() * elapsed_time * daily_fee / 1e18 / 86400));
        last_fee_collection = block.timestamp;
    }
}