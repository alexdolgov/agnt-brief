contract FixedPrice {
    /**
     * @dev Returns the latest price
     * @return int256 price
     */
    function latestAnswer() external pure returns (int256){
        return 100000000;
    }

    /**
     * @dev Returns the decimals of latestAnswer()
     * @return uint8
     */
    function decimals() external pure returns (uint8) {
        return 8;
    }
}