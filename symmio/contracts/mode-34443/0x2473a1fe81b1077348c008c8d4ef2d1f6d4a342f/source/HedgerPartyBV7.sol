// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import './HedgerPartyBV6.sol';

interface ISymmHedger {
  function getCollateral() external view returns (address);
  function withdrawFromReserveVault(uint256 amount) external;
  function withdrawTo(address user, uint256 amount) external;
}

contract HedgerPartyBV7 is HedgerPartyBV6 {
  function withdrawTo(address _to, uint256 _amount) external virtual override onlyRebalancerContract {
    require(isAddressWhitelisted(_to), 'PartyB: Only withdrawal address allowed!');
    ISymmHedger symm = ISymmHedger(storeV1().symmioAddress);

    IERC20Metadata collateral = IERC20Metadata(symm.getCollateral());
    uint8 collateralDecimals = collateral.decimals();
    uint256 amountWithoutDecimals = (_amount * 1e18) / (10 ** collateralDecimals);

    symm.withdrawFromReserveVault(amountWithoutDecimals);
    symm.withdrawTo(_to, _amount);
  }
}
