# @version 0.4.1
# WHAT VERIFYING A VYPER CONTRACT DOES

# from .interfaces import AggregatorV3Interface

# implements: AggregatorV3Interface


CL_DECIMALS_DIFF: constant(uint256) = 10**8

# @deploy
# def __init__():
#     assert (
#         staticcall ETH_USD_CL_PRICE_FEED.decimals() == 8
#     )  # assuming this will always be true


@external
@pure
def decimals() -> uint8:
    """
    @notice Returns the number of decimals used by the price feed
    """
    return 18