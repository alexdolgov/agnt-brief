# @version 0.4.1

"""
@title ASF/USD Price Feed
@license MIT
@author asymmetry.finance (johnnyonline)
@notice
    price_feed.vy is used to fetch the price of ASF/USD from Curve and Chainlink oracles.
"""

from interfaces import ICurveCryptoPool
from interfaces import AggregatorV3Interface


# ============================================================================================
# Interfaces
# ============================================================================================


implements: AggregatorV3Interface


# ============================================================================================
# Constants
# ============================================================================================


CL_DECIMALS_DIFF: constant(uint256) = 10**8
ETH_USD_CL_HEARTBEAT: constant(uint256) = 3600

CURVE_POOL: public(constant(ICurveCryptoPool)) = ICurveCryptoPool(
    0x3D0d331390D14DF42c16FC20700F7e6Ad4849c50
)
ETH_USD_CL_PRICE_FEED: public(
    constant(AggregatorV3Interface)
) = AggregatorV3Interface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419)


# ============================================================================================
# Constructor
# ============================================================================================


@deploy
def __init__():
    assert (
        staticcall ETH_USD_CL_PRICE_FEED.decimals() == 8
    )  # assuming this will always be true


# ============================================================================================
# View functions
# ============================================================================================


@external
@pure
def decimals() -> uint8:
    """
    @notice Returns the number of decimals used by the price feed
    """
    return 18


@external
@pure
def version() -> uint256:
    """
    @notice Returns the version of the price feed
    """
    return 1


@external
@pure
def description() -> String[18]:
    """
    @notice Returns a description of the price feed
    """
    return "ASF/USD Price Feed"


@external
@view
def latestRoundData() -> (uint80, int256, uint256, uint256, uint80):
    """
    @notice Returns the latest round data from the price feed
    @return The round ID
    @return The price of ASF in USD
    @return The timestamp of the start of the round
    @return The timestamp of the last update
    @return The round ID in which the price was answered
    """
    price: int256 = 0
    updated_at: uint256 = 0
    price, updated_at = self._get_price_with_timestamp()
    return (0, price, 0, updated_at, 0)


@external
@view
def latestAnswer() -> int256:
    """
    @notice Returns the latest price from the price feed
    @return The price of ASF in USD
    """
    return self._get_price()


# ============================================================================================
# Internal functions
# ============================================================================================


@internal
@view
def _get_price() -> int256:
    eth_price: uint256 = 0
    updated_at: uint256 = 0
    eth_price, updated_at = self._get_eth_price()
    return self._calc_price(eth_price)


@internal
@view
def _get_price_with_timestamp() -> (int256, uint256):
    eth_price: uint256 = 0
    updated_at: uint256 = 0
    eth_price, updated_at = self._get_eth_price()
    return self._calc_price(eth_price), updated_at


@internal
@view
def _calc_price(eth_price: uint256) -> int256:
    return convert(
        staticcall CURVE_POOL.price_oracle() * eth_price // CL_DECIMALS_DIFF,
        int256,
    )


@internal
@view
def _get_eth_price() -> (uint256, uint256):
    round_id: uint80 = 0
    price: int256 = 0
    started_at: uint256 = 0
    updated_at: uint256 = 0
    answered_in_round: uint80 = 0
    (
        round_id, price, started_at, updated_at, answered_in_round
    ) = staticcall ETH_USD_CL_PRICE_FEED.latestRoundData()
    assert updated_at + ETH_USD_CL_HEARTBEAT > block.timestamp, "old"
    assert price > 0, "!price"
    return convert(price, uint256), updated_at
