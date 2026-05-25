// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

// LayerZero imports
import { EnforcedOptionParam } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OAppOptionsType3.sol";
import { OFT } from "@layerzerolabs/oft-evm/contracts/OFT.sol";

// OZ imports
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

// WOFT imports
import { Helpers } from "./utils/Helpers.sol";
import { IWOFTFactory } from "./interfaces/IWOFTFactory.sol";

struct WOFTConfig {
    uint8 localDecimals;
    uint8 sharedDecimals;
    bytes sendEnforcedOptions;
    bytes sendAndCallEnforcedOptions;
    address woftAdapter;
    uint32 adapterEid;
}

/**
 * @title WOFT
 * @notice The WOFT contract implementation.
 */
contract WOFT is OFT {
    uint8 internal immutable SHARED_DECIMALS;
    uint8 internal immutable LOCAL_DECIMALS;

    IWOFTFactory public immutable WOFT_FACTORY;

    /**
     * @dev Constructs a Wrapped Asset Bridge OFT.
     * @param _name The name of the token.
     * @param _symbol The symbol of the token.
     * @param _lzEndpoint The LayerZero endpoint address.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     * @param _factoryAddress The factory address.
     * @param _config The WOFT configuration.
     */
    constructor(
        string memory _name,
        string memory _symbol,
        address _lzEndpoint,
        address _delegate,
        address _factoryAddress,
        WOFTConfig memory _config
    ) OFT(_name, _symbol, _lzEndpoint, _delegate) Ownable(_delegate) {
        WOFT_FACTORY = IWOFTFactory(_factoryAddress);

        EnforcedOptionParam[] memory enforcedOptionsParams = new EnforcedOptionParam[](2);
        enforcedOptionsParams[0] = EnforcedOptionParam(_config.adapterEid, SEND, _config.sendEnforcedOptions);
        enforcedOptionsParams[1] = EnforcedOptionParam(
            _config.adapterEid,
            SEND_AND_CALL,
            _config.sendAndCallEnforcedOptions
        );
        _setEnforcedOptions(enforcedOptionsParams);

        LOCAL_DECIMALS = _config.localDecimals;
        SHARED_DECIMALS = _config.sharedDecimals;
        decimalConversionRate = 10 ** (LOCAL_DECIMALS - SHARED_DECIMALS);

        _setPeer(_config.adapterEid, Helpers.addressToBytes32(_config.woftAdapter));
    }

    /**
     * @notice Retrieves the local decimals of the WOFT.
     * @return uint8 The local decimals of the WOFT.
     */
    function decimals() public view virtual override returns (uint8) {
        return LOCAL_DECIMALS;
    }

    /**
     * @notice Retrieves the shared decimals of the WOFT.
     * @return uint8 The shared decimals of the WOFT.
     */
    function sharedDecimals() public view virtual override returns (uint8) {
        return SHARED_DECIMALS;
    }

    /**
     * @dev Determines the amount of tokens that will be received on the remote chain
     *      after deducting fees and removing dust.
     * @param _amountLD The amount of tokens to send in local decimals.
     * @param _minAmountLD The minimum amount to send in local decimals.
     * @return amountSentLD The amount sent in local decimals.
     * @return amountReceivedLD The amount received in local decimals on the remote.
     */
    function _debitView(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 /*_dstEid*/
    ) internal view override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        amountSentLD = _amountLD;

        // @dev Check for fees on the factory
        uint256 feeLD = WOFT_FACTORY.getFee(address(this), _amountLD);
        amountReceivedLD = _removeDust(_amountLD - feeLD);

        // @dev Check for slippage
        if (amountReceivedLD < _minAmountLD) revert SlippageExceeded(amountReceivedLD, _minAmountLD);
    }

    /**
     * @dev Burns tokens from the sender's specified balance and transfers fees to the WOFTFactory.
     * @param _from The address to debit the tokens from.
     * @param _amountLD The amount of tokens to send in local decimals.
     * @param _minAmountLD The minimum amount to send in local decimals.
     * @param _dstEid The destination chain ID.
     * @return amountSentLD The amount sent in local decimals.
     * @return amountReceivedLD The amount received in local decimals on the remote.
     */
    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        (amountSentLD, amountReceivedLD) = _debitView(_amountLD, _minAmountLD, _dstEid);

        uint256 fee = amountSentLD - amountReceivedLD;
        if (fee > 0) {
            _transfer(_from, address(WOFT_FACTORY), fee);
        }
        _burn(_from, amountReceivedLD);
    }
}
