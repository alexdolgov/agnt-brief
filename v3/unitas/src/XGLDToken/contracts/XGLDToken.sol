// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IXGLDToken.sol";

contract XGLDToken is OFT {
    uint8 public constant DECIMALS = 6;

    mapping(address => bool) public minters;
    mapping(address => bool) public burners;

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    error OnlyMinter();
    error OnlyBurner();
    error ZeroAddress();

    event MinterAdded(address indexed minter);
    event MinterRemoved(address indexed minter);
    event BurnerAdded(address indexed burner);
    event BurnerRemoved(address indexed burner);

    modifier onlyMinter() {
        if (!minters[msg.sender]) revert OnlyMinter();
        _;
    }

    modifier onlyBurner() {
        if (!burners[msg.sender]) revert OnlyBurner();
        _;
    }

    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate
    ) OFT(_name, _symbol, _lzEndpoint, _delegate) Ownable(_delegate) {}

    function mint(address to, uint256 amount) external onlyMinter {
        if (to == address(0)) revert ZeroAddress();
        _mint(to, amount);
    }

    function burn(uint256 amount) external onlyBurner {
        _burn(msg.sender, amount);
    }

    function addMinter(address minter) external onlyOwner {
        if (minter == address(0)) revert ZeroAddress();
        minters[minter] = true;
        emit MinterAdded(minter);
    }

    function removeMinter(address minter) external onlyOwner {
        minters[minter] = false;
        emit MinterRemoved(minter);
    }

    function addBurner(address burner) external onlyOwner {
        if (burner == address(0)) revert ZeroAddress();
        burners[burner] = true;
        emit BurnerAdded(burner);
    }

    function removeBurner(address burner) external onlyOwner {
        burners[burner] = false;
        emit BurnerRemoved(burner);
    }
}
