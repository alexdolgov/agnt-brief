//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "../../../utils/structs/EnumerableSetUpgradeable.sol";

library LArray {
    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    modifier nonZeroResultsPage(uint256 number) {
        require(number > 0, "LArray: results per page cant be 0");
        _;
    }

    function getPaginatedArray(
        address[] storage array,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (address[] memory cuttedArray) {
        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = getPositions(array.length, page, resultsPerPage);
        cuttedArray = new address[](elementsCount);

        uint256 iterator;
        for (uint256 index = startIndex; index < stopIndex + 1; index++) {
            cuttedArray[iterator] = array[index];
            iterator++;
        }
    }

    function getPaginatedArrayReversed(
        address[] storage array,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (address[] memory cuttedArray) {
        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = getPositionsReversed(array.length, page, resultsPerPage);
        cuttedArray = new address[](elementsCount);

        uint256 iterator;
        uint256 index = startIndex;
        while (index >= stopIndex) {
            cuttedArray[iterator] = array[index];
            iterator++;

            if (index == stopIndex) {
                break;
            }
            index--;
        }
    }

    function getPaginatedArray(
        uint256[] storage array,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (uint256[] memory cuttedArray) {
        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = getPositions(array.length, page, resultsPerPage);
        cuttedArray = new uint256[](elementsCount);

        uint256 iterator;
        for (uint256 index = startIndex; index < stopIndex + 1; index++) {
            cuttedArray[iterator] = array[index];
            iterator++;
        }
    }

    function getPaginatedArray(
        EnumerableSetUpgradeable.AddressSet storage set,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (address[] memory cuttedArray) {
        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = getPositions(set.length(), page, resultsPerPage);
        cuttedArray = new address[](elementsCount);

        uint256 iterator;
        for (uint256 index = startIndex; index < stopIndex + 1; index++) {
            cuttedArray[iterator] = set.at(index);
            iterator++;
        }
    }

    function getPaginatedArrayReversed(
        EnumerableSetUpgradeable.AddressSet storage set,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (address[] memory cuttedArray) {
        (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        ) = getPositionsReversed(set.length(), page, resultsPerPage);
        cuttedArray = new address[](elementsCount);

        uint256 iterator;
        uint256 index = startIndex;
        while (index >= stopIndex && iterator < elementsCount) {
            cuttedArray[iterator] = set.at(index);
            iterator++;

            if (index == stopIndex) {
                break;
            }
            index--;
        }
    }

    function getPaginatedArrayFromIndex(
        EnumerableSetUpgradeable.AddressSet storage set,
        uint256 index,
        uint16 resultsPerPage
    ) external view returns (address[] memory cuttedArray) {
        (uint256 stopIndex, uint256 elementsCount) = getPositionsFromIndex(
            set.length(),
            index,
            resultsPerPage
        );
        cuttedArray = new address[](elementsCount);

        uint256 iterator;
        for (; index < stopIndex + 1; index++) {
            cuttedArray[iterator] = set.at(index);
            iterator++;
        }
    }

    function getPaginatedArrayFromIndexReversed(
        EnumerableSetUpgradeable.AddressSet storage set,
        uint256 index,
        uint16 resultsPerPage
    ) external view returns (address[] memory) {
        (
            uint256 stopIndex,
            uint256 elementsCount
        ) = getPositionsFromIndexReversed(set.length(), index, resultsPerPage);
        address[] memory cuttedArray = new address[](elementsCount);

        uint256 iterator;
        while (index >= stopIndex && iterator < elementsCount) {
            cuttedArray[iterator] = set.at(index);
            iterator++;

            if (index == stopIndex) {
                break;
            }
            index--;
        }

        return cuttedArray;
    }

    function isExistOnPage(
        EnumerableSetUpgradeable.AddressSet storage set,
        address element,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (bool isExist) {
        (uint256 startIndex, uint256 stopIndex, ) = getPositions(
            set.length(),
            page,
            resultsPerPage
        );

        if (set.contains(element)) {
            uint256 index = set.getIndex(element);
            if (index > 0 && index - 1 >= startIndex && index - 1 <= stopIndex)
                isExist = true;
        }
    }

    function isExistOnPage(
        address[] storage array,
        address element,
        uint256 page,
        uint16 resultsPerPage
    ) external view returns (bool isExist) {
        (uint256 startIndex, uint256 stopIndex, ) = getPositions(
            array.length,
            page,
            resultsPerPage
        );

        for (uint256 index = startIndex; index <= stopIndex; index++) {
            if (array[index] == element) {
                isExist = true;
                break;
            }
        }
    }

    function getPositions(
        uint256 size,
        uint256 page,
        uint16 resultPerPage
    )
        public
        pure
        nonZeroResultsPage(resultPerPage)
        returns (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        )
    {
        require(page > 0, "LArray: Invalid page");
        uint256 lastIndex = resultPerPage * page - 1;

        startIndex = resultPerPage * (page - 1);
        if (size > 0) stopIndex = lastIndex > size - 1 ? size - 1 : lastIndex;
        else stopIndex = size;
        if (size <= resultPerPage) elementsCount = size;
        else
            elementsCount = lastIndex > size - 1
                ? lastIndex - (lastIndex - size) - (resultPerPage * (page - 1))
                : resultPerPage;
    }

    function getPositionsFromIndex(
        uint256 size,
        uint256 index,
        uint16 resultPerPage
    )
        public
        pure
        nonZeroResultsPage(resultPerPage)
        returns (uint256 stopIndex, uint256 elementsCount)
    {
        require(index >= 0 && index < size, "LArray: Invalid index");
        uint256 lastIndex = resultPerPage + index - 1;

        stopIndex = lastIndex > size - 1 ? size - 1 : lastIndex;
        if (size <= resultPerPage) elementsCount = size;
        else
            elementsCount = lastIndex > size - 1
                ? lastIndex - (lastIndex - size) - index
                : resultPerPage;
    }

    function getPositionsReversed(
        uint256 size,
        uint256 page,
        uint16 resultPerPage
    )
        public
        pure
        nonZeroResultsPage(resultPerPage)
        returns (
            uint256 startIndex,
            uint256 stopIndex,
            uint256 elementsCount
        )
    {
        require(page > 0, "LArray: Invalid page");
        startIndex = size > 0 ? size - ((page - 1) * resultPerPage) - 1 : 0;
        stopIndex = startIndex + 1 > resultPerPage
            ? (startIndex + 1) - resultPerPage
            : 0;

        elementsCount = startIndex >= resultPerPage
            ? resultPerPage
            : startIndex + 1;
        if (size < 1) elementsCount = 0;
    }

    function getPositionsFromIndexReversed(
        uint256 size,
        uint256 index,
        uint16 resultPerPage
    )
        public
        pure
        nonZeroResultsPage(resultPerPage)
        returns (uint256 stopIndex, uint256 elementsCount)
    {
        require(index >= 0 && index < size, "LArray: Invalid index");
        uint256 startIndex;
        startIndex = index;
        stopIndex = startIndex + 1 > resultPerPage
            ? (startIndex + 1) - resultPerPage
            : 0;

        elementsCount = startIndex >= resultPerPage
            ? resultPerPage
            : startIndex + 1;
        if (size < 1) elementsCount = 0;
    }

    function getPagesByLimit(uint256 size, uint16 limit)
        public
        pure
        returns (uint256)
    {
        if (size < limit) return 1;
        if (size % limit == 0) return size / limit;
        return size / limit + 1;
    }
}
