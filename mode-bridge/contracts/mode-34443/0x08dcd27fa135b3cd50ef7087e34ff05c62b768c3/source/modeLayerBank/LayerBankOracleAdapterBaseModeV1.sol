// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.14;

import {LayerBankOracleAdapterBase} from "../__C3/@redstone-finance/on-chain-relayer/contracts/custom-integrations/layerbank/LayerBankOracleAdapterBase.sol";

abstract contract LayerBankOracleAdapterBaseModeV1 is LayerBankOracleAdapterBase {

  address internal constant ETH_ASSET = 0x0000000000000000000000000000000000000000;
  address internal constant LAB_ASSET = 0xFE67e16313f4B38743a153f74D5762F7C83e59aE;
  uint256 internal constant MAX_ALLOWED_DATA_STALENESS = 10 hours;

  bytes32 internal constant ETH_ID = bytes32("ETH");
  bytes32 internal constant BTC_ID = bytes32("BTC");
  bytes32 internal constant USDC_ID = bytes32("USDC");
  bytes32 internal constant USDT_ID = bytes32("USDT");
  bytes32 internal constant WE_ETH_ID = bytes32("weETH");
  bytes32 internal constant EZ_ETH_ID = bytes32("ezETH");
  bytes32 internal constant LAB_ID = bytes32("LAB");

  function getDataFeedIdForAsset(address asset) public view virtual override returns(bytes32) {
    if (asset == 0xcDd475325D6F564d27247D1DddBb0DAc6fA0a5CF) {
      return BTC_ID;
    } else if (asset == 0xd988097fb8612cc24eeC14542bC03424c656005f) {
      return USDC_ID;
    } else if (asset == 0xf0F161fDA2712DB8b566946122a5af183995e2eD) {
      return USDT_ID;
    } else if (asset == 0xCd5fE23C85820F7B72D0926FC9b05b43E359b7ee) {
      return WE_ETH_ID;
    } else if (asset == 0x2416092f143378750bb29b79eD961ab195CcEea5) {
      return EZ_ETH_ID;
    } else if (asset == LAB_ASSET) {
      return LAB_ID;
    } else if (asset == ETH_ASSET) {
      return ETH_ID;
    } else  {
      revert UnsupportedAsset(asset);
    }
  }

  function getDataFeedIds() public view virtual override returns (bytes32[] memory dataFeedIds) {
    dataFeedIds = new bytes32[](6);
    dataFeedIds[0] = ETH_ID;
    dataFeedIds[1] = BTC_ID;
    dataFeedIds[2] = USDC_ID;
    dataFeedIds[3] = USDT_ID;
    dataFeedIds[4] = WE_ETH_ID;
    dataFeedIds[5] = EZ_ETH_ID;
  }

  function convertDecimals(bytes32 dataFeedId, uint256 valueFromRedstonePayload) public view virtual override returns(uint256) {
    dataFeedId; // Currently, this arg is unused, but it be required for new tokens
    return valueFromRedstonePayload * 1e10;
  }

  function priceOf(address asset) public view virtual override returns (uint256) {
    if(asset == LAB_ASSET) {
      return 1e17; // 0.1 with the total number of 18 decimals
    }

    return super.priceOf(asset);
  }

  function priceOfETH() public view returns (uint256) {
    return priceOf(ETH_ASSET);
  }

  function requireNonStaleData() public view virtual override {
    uint256 latestUpdateTime = getBlockTimestampFromLatestUpdate();
    uint256 curTime = getBlockTimestamp();
    if (latestUpdateTime < curTime && (curTime - latestUpdateTime) > MAX_ALLOWED_DATA_STALENESS) {
      revert DataIsStale(latestUpdateTime);
    }
  }
}
