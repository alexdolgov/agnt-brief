# @version 0.3.10
"""
@title Null Minter
@author Yearn Finance
@license GNU AGPLv3
@notice
    Dummy minter that returns zero values for any future epoch
"""

interface Minter:
    def mint(_epoch: uint256) -> uint256: nonpayable

implements: Minter

last_epoch: public(immutable(uint256))

@external
def __init__(_last_epoch: uint256):
    """
    @notice Constructor
    @param _last_epoch Last completed epoch prior to activation
    """
    last_epoch = _last_epoch

@external
@view
def preview(_epoch: uint256) -> uint256:
    """
    @notice Estimate tokens minted in a future epoch
    @param _epoch Epoch number
    @return Estimated tokens minted
    """
    assert _epoch > last_epoch
    return 0

@external
def mint(_epoch: uint256) -> uint256:
    """
    @notice Mint tokens for a specific epoch
    @param _epoch Epoch number
    @return Amount of tokens minted
    @dev Only callable by gauge controller
    @dev Should only be called for a finished epoch
    @dev Should only be called in sequence
    """
    assert _epoch > last_epoch
    return 0
