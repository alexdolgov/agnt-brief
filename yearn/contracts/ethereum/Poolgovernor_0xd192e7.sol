# pragma version 0.3.10
# pragma optimize gas
# pragma evm-version cancun

"""
@title Pool governor
@author 0xkorin, Yearn Finance
@license GNU AGPLv3
@notice
    Governs the ramping of weights through the governance executor.
    Relies on results from the weight voting contracts.
"""

from vyper.interfaces import ERC20

interface Pool:
    def amplification() -> uint256: view
    def weight(_idx: uint256) -> uint256: view

interface WeightVote:
    def total_votes(_epoch: uint256) -> uint256: view
    def votes(_epoch: uint256, _idx: uint256) -> uint256: view

interface Executor:
    def execute_single(_to: address, _data: Bytes[2048]): nonpayable

genesis: public(immutable(uint256))
pool: public(immutable(address))
management: public(address)
pending_management: public(address)
executor: public(address)
operator: public(address)
initial_weight: public(uint256)
ramp_weight: public(uint256)
redistribute_weight: public(uint256)
min_weight: public(uint256)
max_weight: public(uint256)
target_amplification: public(uint256)
ramp_duration: public(uint256)
weight_vote: public(address)
latest_executed_epoch: public(uint256)

event StartRamp:
    epoch: indexed(uint256)

event SetValue:
    field: indexed(uint256)
    value: uint256

event SetExecutor:
    executor: indexed(address)

event SetOperator:
    operator: indexed(address)

event PendingManagement:
    management: indexed(address)

event SetManagement:
    management: indexed(address)

EPOCH_LENGTH: constant(uint256) = 4 * 7 * 24 * 60 * 60
APPLICATION_DISABLED: constant(address) = 0x0000000000000000000000000000000000000001
PRECISION: constant(uint256) = 10**18
NUM_ASSETS: constant(uint256) = 8

@external
def __init__(_genesis: uint256, _pool: address, _executor: address):
    """
    @notice Constructor
    @param _genesis Timestamp of start of epoch 0
    @param _pool Pool address
    @param _executor Governance executor address
    """
    genesis = _genesis
    pool = _pool
    self.management = msg.sender
    self.executor = _executor
    self.operator = msg.sender

    self.latest_executed_epoch = self._epoch() - 1
    self.initial_weight = PRECISION / 10_000
    self.ramp_weight = PRECISION / 100
    self.redistribute_weight = PRECISION / 10
    self.max_weight = PRECISION
    self.target_amplification = Pool(pool).amplification()
    self.ramp_duration = 7 * 24 * 60 * 60

@external
@view
def epoch() -> uint256:
    """
    @notice Get the current epoch
    @return Current epoch
    """
    return self._epoch()

@internal
@view
def _epoch() -> uint256:
    """
    @notice Get the current epoch
    """
    return (block.timestamp - genesis) / EPOCH_LENGTH

@external
def ramp():
    """
    @notice Ramp weights through the governance executor
    """
    epoch: uint256 = self._epoch() - 1
    assert msg.sender == self.operator
    assert self.latest_executed_epoch < epoch
    self.latest_executed_epoch = epoch

    # calculate weight to redistribute, taking into account blank votes
    v: WeightVote = WeightVote(self.weight_vote)
    total_votes: uint256 = v.total_votes(epoch)
    redistribute: uint256 = 0
    if total_votes > 0:
        blank: uint256 = v.votes(epoch, 0)
        redistribute = self.redistribute_weight * (total_votes - blank) / total_votes
        total_votes -= blank
    if total_votes == 0:
        # no non-blank votes
        return
    left: uint256 = PRECISION - redistribute

    # calculate new weights
    total_weight: uint256 = 0
    shortage: uint256 = 0
    excess: uint256 = 0
    min_weight: uint256 = self.min_weight
    max_weight: uint256 = self.max_weight
    weights: DynArray[uint256, 32] = []
    for i in range(NUM_ASSETS):
        weight: uint256 = Pool(pool).weight(i) * left / PRECISION
        if total_votes > 0:
            weight += redistribute * v.votes(epoch, i + 1) / total_votes

        # clamp
        if weight < min_weight:
            shortage += min_weight - weight
            weight = min_weight
        elif weight > max_weight:
            excess += weight - max_weight
            weight = max_weight
        else:
            total_weight += weight

        weights.append(weight)

    # distribute excess/shortage from clamp
    if shortage > 0 or excess > 0:
        # edge case: all assets are clamped, there is no other asset to distribute to
        assert total_weight > 0
    
        unclamped: uint256 = total_weight
        net: uint256 = total_weight + excess - shortage
        total_weight = 0
        for i in range(NUM_ASSETS):
            weight: uint256 = weights[i]
            if weight > min_weight and weight < max_weight:
                # weight = weight + excess * weight / unclamped - shortage * weight / unclamped
                weight = net * weight / unclamped
                weights[i] = weight
            total_weight += weight

    # correct for rounding
    if total_weight > PRECISION:
        weights[NUM_ASSETS-1] -= total_weight - PRECISION
    else:
        weights[NUM_ASSETS-1] += PRECISION - total_weight

    # execute ramp
    data: Bytes[2048] = _abi_encode(
        self.target_amplification, weights, self.ramp_duration, 
        method_id=method_id('set_ramp(uint256,uint256[],uint256)')
    )
    log StartRamp(epoch)
    Executor(self.executor).execute_single(pool, data)

@external
def set_target_amplification(_target: uint256):
    """
    @notice Set the target amplification factor for the next ramp
    @param _target Target amplification factor
    """
    assert msg.sender == self.management
    self.target_amplification = _target
    log SetValue(0, _target)

@external
def set_executor(_executor: address):
    """
    @notice Set the governance executor
    @param _executor Governance executor
    """
    assert msg.sender == self.management
    assert _executor != empty(address)
    self.executor = _executor
    log SetExecutor(_executor)

@external
def set_operator(_operator: address):
    """
    @notice Set the operator
    @param _operator Operator
    """
    assert msg.sender == self.management
    assert _operator != empty(address)
    self.operator = _operator
    log SetOperator(_operator)

@external
def set_initial_weight(_weight: uint256):
    """
    @notice Set the initial weight during addition of new asset to the pool
    @param _weight Initial weight (18 decimals)
    """
    assert msg.sender == self.management
    assert _weight <= PRECISION / 100
    self.initial_weight = _weight
    log SetValue(1, _weight)

@external
def set_ramp_weight(_weight: uint256):
    """
    @notice Set the ramp target weight of the newly added asset
    @param _weight Ramp target weight (18 decimals)
    """
    assert msg.sender == self.management
    assert _weight <= PRECISION / 50
    self.ramp_weight = _weight
    log SetValue(2, _weight)

@external
def set_redistribute_weight(_weight: uint256):
    """
    @notice Set the weight that is redistributed according to the votes
    @param _weight Redistribute weight (18 decimals)
    """
    assert msg.sender == self.management
    assert _weight <= PRECISION
    self.redistribute_weight = _weight
    log SetValue(3, _weight)

@external
def set_weight_clamp(_min: uint256, _max: uint256):
    """
    @notice Set the minimum and maximum weight of each asset in the pool
    @param _min Minimum weight (18 decimals)
    @param _max Maximum weight (18 decimals)
    @dev These values should be picked carefully as it could result in 
        weight updates that cant be executed
    """
    assert msg.sender == self.management
    assert _min <= PRECISION / 10 and _max >= PRECISION / 5
    self.min_weight = _min
    self.max_weight = _max
    log SetValue(4, _min)
    log SetValue(5, _max)

@external
def set_ramp_duration(_duration: uint256):
    """
    @notice Set the ramp duration
    @param _duration Ramp duration (seconds)
    """
    assert msg.sender == self.management
    self.ramp_duration = _duration
    log SetValue(6, _duration)

@external
def set_weight_vote(_weight: address):
    """
    @notice 
        Set the weight vote contract that determines the redistribution of
        weights over the assets.
    @param _weight New weight vote contract
    """
    assert msg.sender == self.management
    assert _weight != empty(address)
    self.weight_vote = _weight
    log SetValue(8, convert(_weight, uint256))

@external
def set_management(_management: address):
    """
    @notice 
        Set the pending management address.
        Needs to be accepted by that account separately to transfer management over
    @param _management New pending management address
    """
    assert msg.sender == self.management
    self.pending_management = _management
    log PendingManagement(_management)

@external
def accept_management():
    """
    @notice 
        Accept management role.
        Can only be called by account previously marked as pending management by current management
    """
    assert msg.sender == self.pending_management
    self.pending_management = empty(address)
    self.management = msg.sender
    log SetManagement(msg.sender)
