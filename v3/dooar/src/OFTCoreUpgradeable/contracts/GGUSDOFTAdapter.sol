// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {OFTAdapterFeeUpgradeable} from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTAdapterFeeUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract GGUSDOFTAdapter is OFTAdapterFeeUpgradeable {
    using SafeERC20 for IERC20;

    address private feeAddress;
    mapping(address => bool) private whitelist;

    event FeeAddress(address feeAddress);
    event WhitelistUpdated(address indexed account, bool isWhitelisted);

    constructor(
        address _token,
        address _lzEndpoint
    ) OFTAdapterFeeUpgradeable(_token, _lzEndpoint){
        _disableInitializers();
    }

    function initialize(
        address _delegate
    ) public initializer {
        __OFTAdapter_init(_delegate);
        __Ownable_init(_delegate);
        feeAddress = address(0);
    }

    function setFeeAddress(address _feeAddress) external onlyOwner {
        feeAddress = _feeAddress;
        emit FeeAddress(feeAddress);
    }

    function getFeeAddress() public view virtual returns (address) {
        return feeAddress;
    }

    function addToWhitelist(address _account) external onlyOwner {
        require(!whitelist[_account], "Already whitelisted");
        whitelist[_account] = true;
        emit WhitelistUpdated(_account, true);
    }

    function removeFromWhitelist(address _account) external onlyOwner {
        require(whitelist[_account], "Not whitelisted");
        whitelist[_account] = false;
        emit WhitelistUpdated(_account, false);
    }

    function isWhitelisted(address _account) public view returns (bool) {
        return whitelist[_account];
    }

    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        (amountSentLD, amountReceivedLD) = whitelist[_from]
            ? _debitViewNoFee(_amountLD, _minAmountLD)
            : _debitView(_amountLD, _minAmountLD, _dstEid);
        if (amountReceivedLD > amountSentLD) {
            revert("Amount received cannot be greater than amount sent");
        }
        uint256 fee = amountSentLD - amountReceivedLD;

        if (feeAddress == address(0)) {
            if (fee > 0) {
                OFTAdapterFeeStorage storage $ = _getOFTAdapterFeeStorage();
                unchecked {
                    $.feeBalance += fee;
                }
            }
            innerToken.safeTransferFrom(_from, address(this), amountSentLD);
        } else {
            // transfer fee to special account
            if (fee > 0) {
                innerToken.safeTransferFrom(_from, feeAddress, fee);
            }
            innerToken.safeTransferFrom(_from, address(this), amountReceivedLD);
        }
    }

    function _debitViewNoFee(
        uint256 _amountLD,
        uint256 _minAmountLD
    ) internal view virtual returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        amountSentLD = _amountLD;
        unchecked {
            amountReceivedLD = _removeDust(_amountLD);
        }
        if (amountReceivedLD < _minAmountLD) {
            revert SlippageExceeded(amountReceivedLD, _minAmountLD);
        }
    }

    function sharedDecimals() public pure override virtual returns (uint8) {
        return 6;
    }
}
