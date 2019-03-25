// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from database.djinni

package co.ledger.core;

/**
 * A table of data representing a database query result, which is usually generated by executing a statement that queries the database.
 * DatabaseResultRow instances are not expected to live once DatabaseResultSet::next has been called on its parent result set.
 */
public abstract class DatabaseResultRow {
    /**
     * Check if the value is NULL at the given position.
     * @return true if the value is NULL, false otherwise.
     */
    public abstract boolean isNullAtPos(int pos);

    /**
     * Get the column name at the given position.
     * @return the column name.
     */
    public abstract String getColumnName(int pos);

    /**
     * Get the value at the given position. The underneath value has to be an 16bit integer otherwise this call will fail.
     * @return the value at the given position.
     */
    public abstract short getShortByPos(int pos);

    /**
     * Get the value at the given position. The underneath value has to be an 16bit integer otherwise this call will fail.
     * @return the value at the given position.
     */
    public abstract int getIntByPos(int pos);

    /**
     * Get the value at the given position. The underneath value has to be an 16bit integer otherwise this call will fail.
     * @return the value at the given position.
     */
    public abstract float getFloatByPos(int pos);

    /**
     * Get the value at the given position. The underneath value has to be an 16bit integer otherwise this call will fail.
     * @return the value at the given position.
     */
    public abstract double getDoubleByPos(int pos);

    /**
     * Get the value at the given position. The underneath value has to be an 16bit integer otherwise this call will fail.
     * @return the value at the given position.
     */
    public abstract long getLongByPos(int pos);

    /**
     * Get the value at the given position. The underneath value has to be an 16bit integer otherwise this call will fail.
     * @return the value at the given position.
     */
    public abstract String getStringByPos(int pos);

    /**
     * Get the value at the given position. The underneath value has to be an 16bit integer otherwise this call will fail.
     * @return the value at the given position.
     */
    public abstract DatabaseBlob getBlobByPos(int pos);
}