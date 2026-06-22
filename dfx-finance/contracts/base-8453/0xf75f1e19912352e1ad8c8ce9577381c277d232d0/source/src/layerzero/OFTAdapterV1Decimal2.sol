// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {MintBurnOFTAdapter} from "@layerzerolabs/oft-evm/contracts/MintBurnOFTAdapter.sol";
import {IMintableBurnable} from "@layerzerolabs/oft-evm/contracts/interfaces/IMintableBurnable.sol";
import {
    SendParam, MessagingFee, MessagingReceipt, OFTReceipt
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract OFTAdapterV1Decimal2 is MintBurnOFTAdapter {
    using SafeERC20 for IERC20;

    mapping(address => bool) public isAuthorized;

    modifier onlyAuthorized() {
        _onlyAuthorized();
        _;
    }

    constructor(
        address _token, // Your existing ERC20 token with mint/burn exposed
        IMintableBurnable _minterBurner, // Contract with mint/burn privileges
        address _lzEndpoint, // Local LayerZero endpoint
        address _owner // Contract owner
    ) MintBurnOFTAdapter(_token, _minterBurner, _lzEndpoint, _owner) Ownable(_owner) {
        isAuthorized[_owner] = true;
    }

    function sharedDecimals() public pure override returns (uint8) {
        return 2;
    }

    function _debit(address _from, uint256 _amountLD, uint256 _minAmountLD, uint32 _dstEid)
        internal
        virtual
        override
        onlyAuthorized
        returns (uint256 amountSentLD, uint256 amountReceivedLD)
    {
        (amountSentLD, amountReceivedLD) = _debitView(_amountLD, _minAmountLD, _dstEid);
        innerToken.safeTransferFrom(_from, address(this), amountSentLD);
        innerToken.approve(address(minterBurner), amountSentLD);
        minterBurner.burn(_from, amountSentLD);
    }

    function _onlyAuthorized() internal view {
        require(isAuthorized[msg.sender], "Not authorized");
    }

    function setAuthorized(address _address, bool _authorized) external onlyOwner {
        isAuthorized[_address] = _authorized;
    }
}
