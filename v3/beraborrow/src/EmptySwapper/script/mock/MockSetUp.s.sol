// SPDX-License-Identifier: Unlicense

pragma solidity 0.8.26;

import {Script, console2} from "forge-std/Script.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IRebalancer} from "src/interfaces/utils/integrations/IRebalancer.sol";

contract EmptySwapper is IRebalancer {
    IERC20 nectarToken;
    address whitelistedCaller;
    address owner;
    uint sendAmount;

    constructor(IERC20 _nect, address _whitelistedCaller, uint _sendAmount) {
        nectarToken = _nect;
        whitelistedCaller = _whitelistedCaller;
        owner = msg.sender;
        sendAmount = _sendAmount;
    }

    function swap(address, uint256, address, bytes memory) external {
        require(msg.sender == whitelistedCaller, "Not whitelisted");

        nectarToken.transfer(msg.sender, sendAmount);
    }

    function setSendAmount(uint256 _sendAmount) external {
        require(msg.sender == owner, "Not owner");
        sendAmount = _sendAmount;
    }
}

contract MockSetUp is Script {

    function run() public {
        vm.startBroadcast();

        IERC20 nect = IERC20(0x1cE0a25D13CE4d52071aE7e02Cf1F6606F4C79d3);
        address mlv = 0xd62fB1785dc26514657a165BE71e4f8b14A74a44;
        uint sendAmount = 10e18;
        new EmptySwapper(nect, mlv, sendAmount);
    }
}
