//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "./RewardDistributor.sol";

contract RewardDistributorV2 is RewardDistributor {
    /// @notice the Reward distribution speed supply side of each iToken
    mapping(address => uint256) public distributionSupplySpeed;

    /**
     * @notice Internal function to update each iToken's distribution speed
     */
    function _updateDistributionSpeed() internal override {
        address[] memory _iTokens = controller.getAlliTokens();
        uint256 _globalspeed = globalDistributionSpeed;
        uint256 _len = _iTokens.length;

        uint256[] memory _tokenBorrowValues = new uint256[](_len);
        uint256 _totalBorrowValue;
        uint256[] memory _tokenSupplyValues = new uint256[](_len);
        uint256 _totalSupplyValue;

        // Calculates the total value and token value
        // tokenValue = tokenTotalBorrow * price * tokenDistributionFactorMantissa
        for (uint256 i = 0; i < _len; i++) {
            IiToken _token = IiToken(_iTokens[i]);

            // Update both supply and borrow state before updating new speed
            _updateDistributionState(address(_token), true);
            _updateDistributionState(address(_token), false);

            uint256 _totalBorrow = _token.totalBorrows();
            uint256 _totalSupply = IERC20Upgradeable(_iTokens[i]).totalSupply();

            // It is okay if the underlying price is 0
            uint256 _underlyingPrice =
                IPriceOracle(controller.priceOracle()).getUnderlyingPrice(
                    address(_token)
                );

            _tokenBorrowValues[i] = _totalBorrow.mul(_underlyingPrice).rmul(
                distributionFactorMantissa[address(_token)]
            );
            _tokenSupplyValues[i] = _totalSupply
                .rmul(_token.exchangeRateStored())
                .mul(_underlyingPrice)
                .rmul(distributionFactorMantissa[address(_token)]);

            _totalBorrowValue = _totalBorrowValue.add(_tokenBorrowValues[i]);
            _totalSupplyValue = _totalSupplyValue.add(_tokenSupplyValues[i]);
        }

        // Calculates the distribution speed for each token
        for (uint256 i = 0; i < _len; i++) {
            address _token = _iTokens[i];
            uint256 _borrowSpeed =
                _totalBorrowValue > 0
                    ? _globalspeed.mul(_tokenBorrowValues[i]).div(
                        _totalBorrowValue
                    )
                    : 0;
            distributionSpeed[_token] = _borrowSpeed;

            emit DistributionBorrowSpeedUpdated(_token, _borrowSpeed);

            uint256 _supplySpeed =
                _totalSupplyValue > 0
                    ? _globalspeed.mul(_tokenSupplyValues[i]).div(
                        _totalSupplyValue
                    )
                    : 0;
            distributionSupplySpeed[_token] = _supplySpeed;

            emit DistributionSupplySpeedUpdated(_token, _supplySpeed);
        }
    }

    function _updateDistributionState(address _iToken, bool _isBorrow)
        internal
        override
    {
        require(controller.hasiToken(_iToken), "Token has not been listed");

        DistributionState storage state =
            _isBorrow
                ? distributionBorrowState[_iToken]
                : distributionSupplyState[_iToken];

        uint256 _speed =
            _isBorrow
                ? distributionSpeed[_iToken]
                : distributionSupplySpeed[_iToken];

        uint256 _blockNumber = block.number;
        uint256 _deltaBlocks = _blockNumber.sub(state.block);

        if (_deltaBlocks > 0 && _speed > 0) {
            uint256 _totalToken =
                _isBorrow
                    ? IiToken(_iToken).totalBorrows()
                    : IERC20Upgradeable(_iToken).totalSupply();
            uint256 _totalDistributed = _speed.mul(_deltaBlocks);

            // Reward distributed per token since last time
            uint256 _distributedPerToken =
                _totalToken > 0 ? _totalDistributed.rdiv(_totalToken) : 0;

            state.index = state.index.add(_distributedPerToken);
        }

        state.block = _blockNumber;
    }

    function migrate() public {
        require(
            msg.sender == 0x0800604DA276c1D5e9c2C7FEC0e3b43FAb1Ca61a,
            "Only proxyAdmin can migrate"
        );

        // Settle pending states with old implementation
        super._updateDistributionSpeed();

        _updateDistributionSpeed();
    }
}
