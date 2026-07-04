// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {HubOrc} from "../HubOrc/HubOrc.sol";
import {IHubGateway} from "./IHubGateway.sol";

abstract contract HubGateway is IHubGateway, OwnableUpgradeable {
    bytes32 private constant CONTRACT_ID = "Hub Gateway";

    HubOrc internal hubOrc;
    address payable internal hubContract;
    uint256 internal myHubId;

    modifier onlyHubOrc() {
        if (_msgSender() != address(hubOrc)) {
            revert GeneralError(CONTRACT_ID, 4031);
        }
        _;
    }

    modifier onlyHubContract() {
        if (_msgSender() != hubContract) {
            revert GeneralError(CONTRACT_ID, 4032);
        }
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) public initializer {
        __Ownable_init(_owner);
    }

    function setup(HubOrc _hubOrc, address payable _hubContract, uint256 _myHubId) external virtual onlyOwner {
        hubOrc = _hubOrc;
        hubContract = _hubContract;
        myHubId = _myHubId;
        emit Setup(hubOrc, hubContract, myHubId);
    }

    function withdrawGas(address payable receiver) external virtual onlyOwner {
        receiver.transfer(address(this).balance);
    }

    function withdrawERC20(IERC20 token, address receiver) external virtual onlyOwner {
        token.transfer(receiver, token.balanceOf(address(this)));
    }

    function onRequestCompleted(uint256, uint256, bytes32, bytes calldata) external virtual {
        revert GeneralError(CONTRACT_ID, 405);
    }

    function onServiceRequested(uint256, address, bytes32, bytes calldata, uint256) external virtual {
        revert GeneralError(CONTRACT_ID, 405);
    }

    function onRequestCancelled(uint256, address, bytes32) external virtual {
        revert GeneralError(CONTRACT_ID, 405);
    }

    function completeRequest(uint256 requestId, bytes memory outputs) external virtual onlyHubContract {
        hubOrc.completeRequest(requestId, outputs);
    }

    function onFeeReceived(uint256, uint256, uint256) external payable virtual {
        revert GeneralError(CONTRACT_ID, 405);
    }

    receive() external payable virtual {}
}
