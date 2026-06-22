// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ILaunchpadTokenFactory} from "./interfaces/ILaunchpadTokenFactory.sol";
import {IUniswapV2Router02} from "v2-periphery/interfaces/IUniswapV2Router02.sol";
import {IUniswapV2Factory} from "v2-core/interfaces/IUniswapV2Factory.sol";
// import {UniswapV2Pair} from "v2-core/UniswapV2Pair.sol";


contract LaunchpadToken is ERC20 {
    bool opend = false;
    string public uri;
    address public factory;
    address public uniswapPairAddress;

    function computeCreate2Address(
        address deployer,
        bytes32 salt,
        bytes32 initCode
    ) public pure returns (address pair) {

        pair = address(uint160(uint256(keccak256(abi.encodePacked(
                hex'ff',
                deployer,
                salt,
                initCode // init code hash
            )))));
    }

    constructor(string memory name_, string memory symbol_, string memory uri_, uint256 initialSupply) ERC20(name_, symbol_) {
        factory = msg.sender;
        uri = uri_;
        address uniswapFactory = ILaunchpadTokenFactory(factory).uniV2Factory();
        address weth = IUniswapV2Router02(ILaunchpadTokenFactory(factory).uniV2Router()).WETH();
        (address token0, address token1) = address(this) < weth ? (address(this), weth) : (weth, address(this));
        uniswapPairAddress = computeCreate2Address(uniswapFactory, keccak256(abi.encodePacked(token0, token1)), hex'96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f');
        _mint(msg.sender, initialSupply);
    }
    function openTrade() external {
        require(msg.sender == factory, "Only factory");   
        opend = true;
    }
    function _update(address from, address to, uint256 value) internal override {
        require(opend || to != uniswapPairAddress, "Token not yet migrated");
        super._update(from, to, value);
    }
}