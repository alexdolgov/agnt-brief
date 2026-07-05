// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import { IERC20Mintable } from "./interfaces/IERC20Mintable.sol";
import { IVotingEscrow } from "./interfaces/IVotingEscrow.sol";

import { AccessManagedUpgradeable } from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";

// LayerZero
import { OAppReceiverUpgradeable } from "oapp-upgradeable/OAppReceiverUpgradeable.sol";
import { MessagingFee, Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { OAppReceiver } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppReceiver.sol";

contract SpectraMinter is OAppReceiverUpgradeable, AccessManagedUpgradeable {
    uint256 private constant UNIT_RATIO = 1e18;

    IERC20Mintable public spectra;
    IVotingEscrow public veSpectra;
    uint256 public apwToSpectraRatio;

    /* EVENTS
     *****************************************************************************************************************/
    event SpectraMinted(address indexed user, address indexed receiver, uint256 amount);
    event VeSpectraMinted(address indexed user, address indexed receiver, uint256 amount, uint256 lockDuration);

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _initialAuthority,
        address _endpoint,
        address _delegate,
        address _spectra,
        address _veSpectra,
        uint256 _apwToSpectraRatio
    ) public initializer {
        __AccessManaged_init(_initialAuthority);
        _initializeOAppCore(_endpoint, _delegate);
        spectra = IERC20Mintable(_spectra);
        veSpectra = IVotingEscrow(_veSpectra);
        apwToSpectraRatio = _apwToSpectraRatio;
    }

    /**
     * @dev Internal function to implement lzReceive logic without needing to copy the basic parameter validation.
     */
    function _lzReceive(Origin calldata, bytes32, bytes calldata _message, address, bytes calldata) internal override {
        (address user, address receiver, uint256 amount, uint256 lockDuration) = abi.decode(
            _message,
            (address, address, uint256, uint256)
        );
        if (lockDuration == 0) {
            handleApwBridged(user, receiver, amount);
        } else {
            handleVeApwBridged(user, receiver, amount, lockDuration);
        }
    }

    function handleApwBridged(address _user, address _receiver, uint256 _amount) internal {
        uint256 amount = (_amount * apwToSpectraRatio) / UNIT_RATIO;
        spectra.mint(_receiver, amount);
        emit SpectraMinted(_user, _receiver, amount);
    }

    function handleVeApwBridged(address _user, address _receiver, uint256 _amount, uint256 _lockDuration) internal {
        uint256 amount = (_amount * apwToSpectraRatio) / UNIT_RATIO;
        spectra.mint(address(this), amount);
        spectra.approve(address(veSpectra), amount);
        veSpectra.createLockFor(amount, _lockDuration, _receiver);
        emit VeSpectraMinted(_user, _receiver, amount, _lockDuration);
    }
}
