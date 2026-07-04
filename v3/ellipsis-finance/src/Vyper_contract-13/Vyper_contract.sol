# @version 0.2.11

from vyper.interfaces import ERC20

event Fund:
    recipient: indexed(address)
    amount: uint256

event Claim:
    recipient: indexed(address)
    claimed: uint256


token: public(address)
start_time: public(uint256)
end_time: public(uint256)
initial_locked: public(HashMap[address, uint256])
total_claimed: public(HashMap[address, uint256])

initial_locked_supply: public(uint256)

admin: public(address)


@external
def __init__(
    _token: address,
):
    """
    @param _token Address of the ERC20 token being distributed
    """
    self.token = _token
    self.admin = msg.sender
    self.start_time = block.timestamp
    self.end_time = block.timestamp + 86400 * 365


@external
@nonreentrant('lock')
def fund(_recipients: address[4], _amounts: uint256[4]):
    """
    @notice Vest tokens for multiple recipients
    @param _recipients List of addresses to fund
    @param _amounts Amount of vested tokens for each address
    """
    assert msg.sender == self.admin
    _total_amount: uint256 = 0
    for i in range(4):
        amount: uint256 = _amounts[i]
        recipient: address = _recipients[i]
        if recipient == ZERO_ADDRESS:
            break
        _total_amount += amount
        self.initial_locked[recipient] += amount
        log Fund(recipient, amount)

    ERC20(self.token).transferFrom(msg.sender, self, _total_amount)
    self.initial_locked_supply += _total_amount


@internal
@view
def _total_vested_of(_recipient: address) -> uint256:
    start: uint256 = self.start_time
    end: uint256 = self.end_time
    locked: uint256 = self.initial_locked[_recipient]
    return min(locked * (block.timestamp - start) / (end - start), locked)


@internal
@view
def _total_vested() -> uint256:
    start: uint256 = self.start_time
    end: uint256 = self.end_time
    locked: uint256 = self.initial_locked_supply
    if block.timestamp < start:
        return 0
    return min(locked * (block.timestamp - start) / (end - start), locked)


@external
@view
def vestedSupply() -> uint256:
    """
    @notice Get the total number of tokens which have vested, that are held
            by this contract
    """
    return self._total_vested()


@external
@view
def lockedSupply() -> uint256:
    """
    @notice Get the total number of tokens which are still locked
            (have not yet vested)
    """
    return self.initial_locked_supply - self._total_vested()


@external
@view
def vestedOf(_recipient: address) -> uint256:
    """
    @notice Get the number of tokens which have vested for a given address
    @param _recipient address to check
    """
    return self._total_vested_of(_recipient)


@external
@view
def balanceOf(_recipient: address) -> uint256:
    """
    @notice Get the number of unclaimed, vested tokens for a given address
    @param _recipient address to check
    """
    return self._total_vested_of(_recipient) - self.total_claimed[_recipient]


@external
@view
def lockedOf(_recipient: address) -> uint256:
    """
    @notice Get the number of locked tokens for a given address
    @param _recipient address to check
    """
    return self.initial_locked[_recipient] - self._total_vested_of(_recipient)


@external
@nonreentrant('lock')
def claim(addr: address = msg.sender):
    """
    @notice Claim tokens which have vested
    @param addr Address to claim tokens for
    """
    claimable: uint256 = self._total_vested_of(addr) - self.total_claimed[addr]
    self.total_claimed[addr] += claimable
    assert ERC20(self.token).transfer(addr, claimable)

    log Claim(addr, claimable)