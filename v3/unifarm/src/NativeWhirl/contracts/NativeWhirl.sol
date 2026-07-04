//SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "./Whirl.sol";
import "./utils/BaseRelayRecipient.sol";
import "./utils/Context.sol";

contract NativeWhirl is Whirl, Context, BaseRelayRecipient {
    constructor(
        IVerifier _verifier,
        IHasher _hasher,
        uint256 _denomination,
        uint32 _merkleTreeHeight,
        address _owner,
        address _governance,
        address _protocolFeeDistributor,
        address _rewardDistributor
    )
        Whirl(
            _verifier,
            _hasher,
            _denomination,
            _merkleTreeHeight,
            _owner,
            _governance,
            _protocolFeeDistributor,
            _rewardDistributor
        )
    {}

    function _processDeposit() internal override {
        require(
            msg.value == denomination,
            "Please send `denomination` of native tokens along with transaction"
        );
    }

    function _processWithdraw(
        address payable _recipient,
        address payable _relayer,
        uint256 _fee,
        uint256 _refund
    ) internal override {
        // sanity checks
        require(
            msg.value == 0,
            "Message value is supposed to be zero for native instance"
        );
        require(
            _refund == 0,
            "Refund value is supposed to be zero for native instance"
        );
        uint256 protocolFeeValue = (denomination * protocolFee) /
            protocolFeeBase;

        (bool success, ) = _recipient.call{
            value: denomination - _fee - protocolFeeValue
        }("");
        require(success, "payment to _recipient did not go thru");
        if (_fee > 0) {
            (success, ) = _relayer.call{value: _fee}("");
            require(success, "payment to _relayer did not go thru");
        }
        if (protocolFeeValue > 0) {
            (success, ) = protocolFeeDistributor.call{value: protocolFeeValue}(
                ""
            );
            require(success, "fee to protocol distributor did not go thru");
        }
    }

    function setTrustedForwarder(address _trustedForwarder) external onlyOwner {
        trustedForwarder = _trustedForwarder;
    }

    function _msgSender()
        internal
        view
        override(Context, BaseRelayRecipient)
        returns (address)
    {
        return BaseRelayRecipient._msgSender();
    }
}
