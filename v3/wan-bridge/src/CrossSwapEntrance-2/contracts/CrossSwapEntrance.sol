// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "./interfaces/IBridge.sol";
import "./interfaces/ICrossSwap.sol";
import "./interfaces/IEIP5164.sol";

contract CrossSwapEntrance is
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable,
    ICrossSwap
{
    using SafeERC20 for IERC20;

    address public bridge;
    address public executor;
    address public gateway;

    uint256 public constant WAN_CHAIN_ID = 2153201998;

    event CrossSwap(bytes32 messageId, ICrossSwap.CrossSwapParams params);

    constructor() {
        // _disableInitializers();
    }

    function initialize(
        address _owner,
        address _bridge,
        address _executor,
        address _gateway
    ) public initializer {
        bridge = _bridge;
        executor = _executor;
        gateway = _gateway;

        __Ownable_init(_owner);
        __ReentrancyGuard_init();
    }

    function crossSwap(
        ICrossSwap.CrossSwapParams calldata params
    ) external payable override nonReentrant {
        require(
            msg.value >= (params.messageFee + params.networkFee0),
            "CrossSwapExecutor: insufficient fee"
        );
        bytes32 messageId = SingleMessageDispatcher(gateway).dispatchMessage{
            value: params.messageFee
        }(WAN_CHAIN_ID, executor, abi.encode(params));

        if (params.fromToken != address(0)) {
            IERC20(params.fromToken).safeTransferFrom(
                msg.sender,
                address(this),
                params.fromAmount
            );
            if (params.crossType0 == CrossType.UserLock) {
                IERC20(params.fromToken).safeIncreaseAllowance(
                    bridge,
                    params.fromAmount
                );
                IBridge(bridge).userLock{value: params.networkFee0}(
                    params.smgID,
                    params.tokenPairID0,
                    params.fromAmount,
                    abi.encodePacked(executor)
                );
            } else {
                IBridge(bridge).userBurn{value: params.networkFee0}(
                    params.smgID,
                    params.tokenPairID0,
                    params.fromAmount,
                    0,
                    params.fromToken,
                    abi.encodePacked(executor)
                );
            }
        } else {
            require(
                msg.value >=
                    (params.messageFee +
                        params.networkFee0 +
                        params.fromAmount),
                "CrossSwapExecutor: insufficient fee"
            );
            IBridge(bridge).userLock{
                value: params.networkFee0 + params.fromAmount
            }(
                params.smgID,
                params.tokenPairID0,
                params.fromAmount,
                abi.encodePacked(executor)
            );
        }

        emit CrossSwap(messageId, params);
    }
}
