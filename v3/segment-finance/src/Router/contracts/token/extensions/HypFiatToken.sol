// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity >=0.8.0;

import {IFiatTokenS1} from "../interfaces/IFiatToken.sol";
import {HypERC20Collateral} from "../HypERC20Collateral.sol";

// see https://github.com/circlefin/stablecoin-evm/blob/master/doc/tokendesign.md#issuing-and-destroying-tokens
contract HypFiatToken is HypERC20Collateral {
    constructor(
        address _fiatToken,
        address _mailbox
    ) HypERC20Collateral(_fiatToken, _mailbox) {}

    function _transferFromSender(
        uint256 _amount
    ) internal override returns (bytes memory metadata) {
        // transfer amount to address(this)
        metadata = super._transferFromSender(_amount);
        // burn amount of address(this) balance
        IFiatTokenS1(address(wrappedToken)).burn(address(this), _amount);
    }

    function _transferTo(
        address _recipient,
        uint256 _amount,
        bytes calldata /*metadata*/
    ) internal override {
        uint256 before = wrappedToken.balanceOf(_recipient);
        // will revert on error
        IFiatTokenS1(address(wrappedToken)).mint(_recipient, _amount);

        uint256 balanceAfter = wrappedToken.balanceOf(_recipient);
        uint256 minted = balanceAfter - before;
        // ensure amount was minted
        require(minted == _amount, "FiatToken mint failed");
    }
}
