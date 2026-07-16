// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

interface IFireBotTokenV4 {
	function transferFrom(address sender, address recipient, uint256 amount) external;
    function balanceOf(address account) external view returns(uint256);
}

interface IFireBotItemsV2 {
	function balanceOf(address account, uint256 id) external view returns(uint256);
    function totalSupply(uint256 id) external view returns(uint256);
}

contract FireVaultFBXV2 is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    
    IFireBotTokenV4 public FBX = IFireBotTokenV4(0xD125443F38A69d776177c2B9c041f462936F8218);
    IFireBotItemsV2 public items = IFireBotItemsV2(0x2e14520C30370d114612552616964a3bCeD6176E);

    uint256 pup_valuation_multiplier;
    uint256 box_threshold;
    uint256 exit_fee;
    uint256 daily_fee;
    uint256 last_fee_collection;

    address vault_address = 0xBd684239567341ed500224FfE21F5540930359A9;

    constructor() ERC20("FireVault FBX", "fireFBX") ERC20Permit("FireVault FBX") {
        box_threshold = 7850;
        pup_valuation_multiplier = 270;
        exit_fee = 1e18 * 0.1 / 100;
        daily_fee = 1e18 * 0.03 / 100;
        last_fee_collection = block.timestamp;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function set_pup_valuation_multiplier(uint256 x) public onlyOwner {
        pup_valuation_multiplier = x;
    }

    function get_pup_valuation_multiplier() public view returns (uint256) {
        return pup_valuation_multiplier;
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
    
    function get_last_fee_collection() public view returns (uint256) {
        return last_fee_collection;
    }

    function get_pup_value() public view returns (uint256) { // bigint
        uint256 tot_rarity = 16823 + items.totalSupply(10);
        uint256 locked_supply = FBX.balanceOf(0xeE55918d2fd4a1fED4A6c6f8878DD3F8Ff08abD5);  // minter
        locked_supply += FBX.balanceOf(0x0B66501DcD9449A53Fd6C062be04bA6aA9Fc5b35);         // distributor
        locked_supply += FBX.balanceOf(0x09e572Ac2E1c0b028B45407F79a16863f6c67a48);         // vested for the team
        return pup_valuation_multiplier * locked_supply / tot_rarity / 1000;
    }

    function get_cardboard_box_eq() public view returns (uint256) { // int
        uint256 box_eq = items.balanceOf(vault_address, 1);
        box_eq += items.balanceOf(vault_address, 2) * 3;
        box_eq += items.balanceOf(vault_address, 3) * 9;
        box_eq += items.balanceOf(vault_address, 4) * 27;
        return box_eq;
    }

    function get_fireFBX_price() public view returns (uint256) { // bigint
        
        uint256 vault_valuation = 0;
        vault_valuation = FBX.balanceOf(vault_address);
        
        uint256 pup_value = get_pup_value();
        if (pup_value > 150 * 1e18) {
            uint256 box_eq = get_cardboard_box_eq();
            if (box_eq > box_threshold) {
                box_eq = box_threshold;
            }
            vault_valuation += box_eq * uint256((pup_value - 150 * 1e18) / 5);
        }

        vault_valuation += pup_value * items.balanceOf(vault_address, 10);
        return 1e18 * vault_valuation / totalSupply();
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