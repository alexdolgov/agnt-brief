// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "../Sickle.sol";
import "../SickleFactory.sol";
import "../libs/FeesLib.sol";
import "../interfaces/external/IWETH.sol";

address constant ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

contract StrategyBase {
    address public immutable feesLib;
    address public immutable factory;
    address public immutable wrappedNativeAddress;

    error NotOwner();
    error NotOwnerOrInternal();
    error NotOwnerOrApproved();
    error NotOwnerOrApprovedOrInternal();
    error SickleNotDeployed();
    error IncorrectMsgValue();
    error NotRegisteredSickle();

    constructor(
        address factory_,
        address feesLib_,
        address wrappedNativeAddress_
    ) {
        feesLib = feesLib_;
        factory = factory_;
        wrappedNativeAddress = wrappedNativeAddress_;
    }

    modifier onlyRegisteredSickle() {
        if (SickleFactory(factory).admins(address(this)) == address(0)) {
            revert NotRegisteredSickle();
        }

        _;
    }

    // @dev allow access only to the sickle's owner
    // to use for all functions unless part of specific cases listed below
    modifier checkOwner(address sickleAddress) {
        // Calling the factory instead of the Sickle contract gives us the
        // guarantee that the Sickle contract is genuine
        if (msg.sender != SickleFactory(factory).admins(sickleAddress)) {
            revert NotOwner();
        }

        _;
    }

    // @dev allow access only to the sickle's owner or addresses approved by him
    // to use only for functions such as claiming rewards or compounding rewards
    modifier checkOwnerOrApproved(address sickleAddress) {
        Sickle sickle = Sickle(payable(sickleAddress));

        // Here we check if the Sickle  was really deployed, this gives use the
        // guarantee that the contract that we are going to call is genuine
        if (SickleFactory(factory).admins(sickleAddress) == address(0)) {
            revert SickleNotDeployed();
        }

        if (!sickle.isOwnerOrApproved(msg.sender)) revert NotOwnerOrApproved();

        _;
    }

    // @dev allow access only to the sickle's owner or internal calls
    // to use only for functions such as components of a complex action
    modifier checkOwnerOrInternal(address sickleAddress) {
        Sickle sickle = Sickle(payable(sickleAddress));

        // Here we check if the Sickle  was really deployed, this gives use the
        // guarantee that the contract that we are going to call is genuine
        if (SickleFactory(factory).admins(sickleAddress) == address(0)) {
            revert SickleNotDeployed();
        }

        if (
            msg.sender != SickleFactory(factory).admins(sickleAddress)
                && msg.sender != sickleAddress
        ) revert NotOwnerOrInternal();

        _;
    }

    // @dev allow access only to the sickle's owner or addresses approved by him
    // or internal calls
    // to use only for functions such as claiming rewards or components of a
    // complex action
    modifier checkOwnerOrApprovedOrInternal(address sickleAddress) {
        Sickle sickle = Sickle(payable(sickleAddress));

        // Here we check if the Sickle  was really deployed, this gives use the
        // guarantee that the contract that we are going to call is genuine
        if (SickleFactory(factory).admins(sickleAddress) == address(0)) {
            revert SickleNotDeployed();
        }

        if (
            !sickle.isOwnerOrApproved(msg.sender) && msg.sender != sickleAddress
        ) revert NotOwnerOrApprovedOrInternal();

        _;
    }

    /// INTERNALS ///

    function _chargeFees(
        bytes32 feeHash,
        address tokenToCharge,
        uint256 baseAmount
    ) internal returns (uint256 remainingAmount) {
        (remainingAmount) = abi.decode(
            _delegateTo(
                feesLib,
                abi.encodeCall(
                    FeesLib.chargeFees, (feeHash, tokenToCharge, baseAmount)
                )
            ),
            (uint256)
        );
    }

    function _delegateTo(
        address to,
        bytes memory data
    ) internal returns (bytes memory) {
        (bool success, bytes memory result) = to.delegatecall(data);

        if (!success) {
            if (result.length == 0) revert();
            assembly {
                revert(add(32, result), mload(result))
            }
        }

        return result;
    }

    function _checkMsgValue(uint256 inputAmount, bool isNative) internal {
        if (
            // Input is native token but user sent incorrect amount
            (isNative && inputAmount != msg.value)
            // Input is ERC20 but user sent native token as well
            || (!isNative && msg.value > 0)
        ) {
            revert IncorrectMsgValue();
        }
    }

    /// @dev Sweeps all the balance of {tokens} and ETH from the contract and
    /// send
    /// them to {recipient}
    /// @param tokens An array of token addresses
    /// @param recipient Address of the recipient
    function _sweepSickleBalances(
        address[] memory tokens,
        address recipient
    ) internal {
        for (uint256 i = 0; i != tokens.length; i++) {
            if (tokens[i] == ETH || tokens[i] == address(0)) {
                SafeTransferLib.safeTransferETH(
                    recipient, address(this).balance
                );
            } else if (IERC20(tokens[i]).balanceOf(address(this)) > 0) {
                if (tokens[i] == wrappedNativeAddress) {
                    IWETH9(wrappedNativeAddress).withdraw(
                        IWETH9(wrappedNativeAddress).balanceOf(address(this))
                    );
                    SafeTransferLib.safeTransferETH(
                        recipient, address(this).balance
                    );
                } else {
                    SafeTransferLib.safeTransfer(
                        tokens[i],
                        recipient,
                        IERC20(tokens[i]).balanceOf(address(this))
                    );
                }
            }
        }
    }
}
