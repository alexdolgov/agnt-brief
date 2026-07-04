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

@external
@view
def preview(_epoch: uint256) -> uint256:
    """
    @notice Estimate tokens minted in a future epoch
    @param _epoch Epoch number
    @return Estimated tokens minted
    """
    return 0

@external
def mint(_epoch: uint256) -> uint256:
    """
    @notice Mint tokens for a specific epoch
    @param _epoch Epoch number
    @return Amount of tokens minted
    """
    return 0