/**SPDX-License-Identifier: BUSL-1.1

      ▄▄█████████▄
   ╓██▀└ ,╓▄▄▄, '▀██▄
  ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,
 ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,
██  ██ ╒█▀'   ╙█▌ ╙█▌ ██     ▐██      ███  █████,  ██  ██▌    └██▌  ██▌     └██▌
██ ▐█▌ ██      ╟█  █▌ ╟█     ██▌      ▐██  ██ └███ ██  ██▌     ╟██ j██       ╟██
╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
 ██ "██, ╙▀▀███████████⌐      ╙████████▀   ██     ╙██  ███████▀▀     ╙███████▀`
  ██▄ ╙▀██▄▄▄▄▄,,,                ¬─                                    '─¬
   ╙▀██▄ '╙╙╙▀▀▀▀▀▀▀▀
      ╙▀▀██████R⌐

 */

pragma solidity 0.8.16;

import "contracts/external/openzeppelin/contracts/access/AccessControl.sol";
import "contracts/rwaOracles/IRWAOracleExternalComparisonCheck.sol";
import "contracts/interfaces/CTokenInterfacesModified.sol";
import "contracts/external/openzeppelin/contracts/token/IERC20Metadata.sol";
import "contracts/ousg/ousgInstantManager.sol";

contract FluxStateSanityCheck is AccessControl {
  bytes32 public constant OFI_ROLE = keccak256("OFI_ROLE");
  uint256 public constant NORMALIZER = 1e18;

  OUSGInstantManager public immutable ousgInstantManager;
  IRWAOracleExternalComparisonCheck public immutable rwaOracle;

  uint256 public netWorth;
  // NOTE: Scaled to 1e6 = 1
  uint256 public allowedDeltaPercent = 1000;

  FTokenData[] public fTokensData;
  CTokenInterface public immutable fOUSG;
  IERC20Metadata public immutable OUSG;

  struct FTokenData {
    CTokenInterface fToken;
    IERC20Metadata underlying;
    uint8 underlyingDecimals;
  }

  error DeltaPercentGreaterThanOne();

  event SetOUSGPrice(uint256 ousgPrice);

  event SetAllowedDeltaPercent(uint256 allowedDeltaPercent);

  constructor(
    address _fluxManagerMultiSig,
    address _ousgInstantManager,
    address _rwaOracle,
    address _fOUSG
  ) {
    _grantRole(OFI_ROLE, _fluxManagerMultiSig);
    _grantRole(DEFAULT_ADMIN_ROLE, _fluxManagerMultiSig);
    ousgInstantManager = OUSGInstantManager(_ousgInstantManager);
    rwaOracle = IRWAOracleExternalComparisonCheck(_rwaOracle);

    fOUSG = CTokenInterface(_fOUSG);
    OUSG = IERC20Metadata(fOUSG.underlying());
  }

  // NOTE: This function does not account for stablecoins supplied to Flux.
  // Supplying/withdrawing stablecoins during Flux Ops will cause a networth discrepancy.
  function setState() external onlyRole(OFI_ROLE) {
    netWorth = _calculateState();
  }

  function checkInvariant() external onlyRole(OFI_ROLE) {
    uint256 newNetWorth = _calculateState();

    uint256 assetsDiff = _getDiff(newNetWorth, netWorth);

    uint256 allowedDelta = (netWorth * allowedDeltaPercent) / 1e6;

    require(assetsDiff <= allowedDelta, "Delta check failed");
  }

  function setAllowedDeltaPercent(
    uint256 _allowedDeltaPercent
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (_allowedDeltaPercent > 1e6) {
      revert DeltaPercentGreaterThanOne();
    }

    allowedDeltaPercent = _allowedDeltaPercent;
    emit SetAllowedDeltaPercent(allowedDeltaPercent);
  }

  function addFTokens(
    CTokenInterface[] memory _fTokens
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    for (uint256 i = 0; i < _fTokens.length; i++) {
      fTokensData.push(
        FTokenData({
          fToken: _fTokens[i],
          underlying: IERC20Metadata(_fTokens[i].underlying()),
          underlyingDecimals: IERC20Metadata(_fTokens[i].underlying()).decimals()
        })
      );
    }
  }

  function _calculateState() internal returns (uint256) {
    (uint256 liabilities, uint256 assets) = _getfTokenBalances();

    assets += _getOUSGBalance();

    return assets - liabilities;
  }

  function _getfTokenBalances()
    internal
    returns (uint256 _liabilities, uint256 _assets)
  {
    uint256 borrow;
    for (uint256 i = 0; i < fTokensData.length; i++) {
      FTokenData memory fTokenData = fTokensData[i];
      borrow = fTokenData.fToken.borrowBalanceCurrent(msg.sender);

      _liabilities +=
        (borrow * NORMALIZER) /
        (10 ** fTokenData.underlyingDecimals);

      // NOTE: Assuming stablecoins all worth $1
      _assets +=
        (fTokenData.underlying.balanceOf(msg.sender) * NORMALIZER) /
        (10 ** fTokenData.underlyingDecimals);
    }
  }

  function _getOUSGBalance() internal view returns (uint256) {
    // Exchange rate decimals = 1e(18 - 8 + OUSGDecimals) = 28
    uint256 ousgSupplied = (fOUSG.balanceOf(msg.sender) *
      fOUSG.exchangeRateStored()) / (10 ** 28);

    (uint256 ousgPrice, ) = rwaOracle.getPriceData();

    uint256 ousgBalance = (OUSG.balanceOf(msg.sender) * ousgPrice) / 10 ** 18;
    ousgSupplied = (ousgSupplied * ousgPrice) / 10 ** 8;

    return ousgBalance + ousgSupplied;
  }

  function _getDiff(uint256 a, uint256 b) internal pure returns (uint256) {
    return a > b ? a - b : b - a;
  }
}
